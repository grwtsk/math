# casesM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cd15c167c689939084103968541e3dbc8a9550f8df7c3c4644a1c46c265c67a",
  "kind": "def",
  "lexical_name": "casesM",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "casesm--6887045c32c5a40e41ddeecf",
  "source": {
    "blob": "f820778d400427096b47661a71dd96ef2ab21b49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantcb5fee5f96f3f8337081ca610d906bc2db627f5482f0aa2ea576d8d2b786ff14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6887045c32c5a40e41ddeecfdb32cf17a96430e515e1af1686097d0c26268144",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantcb5fee5f96f3f8337081ca610d906bc2db627f5482f0aa2ea576d8d2b786ff14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cd15c167c689939084103968541e3dbc8a9550f8df7c3c4644a1c46c265c67a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def casesM [Monad m] (xs : MLList m α)
    (hnil : Unit → m (MLList m β)) (hcons : α → MLList m α → m (MLList m β)) : MLList m β :=
  squash fun _ => do
    match ← xs.uncons with
    | none => hnil ()
    | some (x, xs) => hcons x xs

/--
Performs a case distinction on a `MLList` when the motive is a `MLList` as well.
(We need to be in a monadic context to distinguish a nil from a cons.)
-/
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantcb5fee5f96f3f8337081ca610d906bc2db627f5482f0aa2ea576d8d2b786ff14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantcb5fee5f96f3f8337081ca610d906bc2db627f5482f0aa2ea576d8d2b786ff14.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f820778d400427096b47661a71dd96ef2ab21b49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
