# Pattern.mulOccursInAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e555b063a850975995a50220d6ff068b667e8ebdc98a452004d7ff3b3744fa5",
  "kind": "def",
  "lexical_name": "Pattern.mulOccursInAt",
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
  "slug": "pattern-muloccursinat--5751ac7f6523f017f7ee66af",
  "source": {
    "blob": "a5cecafff31a4cb24b5c9f20a3f2e91100e5d125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 321,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant965909eedd4ec4d391e16fb950627bb031bb48b198a5fcc48ca07ee46f75287a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5751ac7f6523f017f7ee66af9e161fd459971ccd99b42ac12ce8e5275ad62766",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant965909eedd4ec4d391e16fb950627bb031bb48b198a5fcc48ca07ee46f75287a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e555b063a850975995a50220d6ff068b667e8ebdc98a452004d7ff3b3744fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pattern.mulOccursInAt (p : Pattern A G) (x : G → A) (g : G) : Prop :=
  ∀ (h) (_ : h ∈ p.support), x (g * h) = p.config h

/-- `mulForbidden F` is the set of configurations that avoid every pattern in `F`.

Formally: `x ∈ mulForbidden F` if and only if for every pattern `p ∈ F` and every
monoid element `g : G`, the pattern `p` does not occur in `x` at position `g`.

Intuitively, `mulForbidden F` is the shift space defined by declaring the finite set
(or family) of patterns `F` to be *forbidden*. A configuration belongs to the subshift if and only
it avoids all the forbidden patterns. -/
@[to_additive forbidden
/-- `forbidden F` is the set of configurations that avoid every pattern in `F`.

Formally: `x ∈ forbidden F` if and only if for every pattern `p ∈ F` and every
monoid element `g : G`, the pattern `p` does not occur in `x` at position `g`.

Intuitively, `forbidden F` is the shift space defined by declaring the finite set
(or family) of patterns `F` to be *forbidden*. A configuration belongs to the subshift if and only
it avoids all the forbidden patterns. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant965909eedd4ec4d391e16fb950627bb031bb48b198a5fcc48ca07ee46f75287a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant965909eedd4ec4d391e16fb950627bb031bb48b198a5fcc48ca07ee46f75287a.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5cecafff31a4cb24b5c9f20a3f2e91100e5d125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
