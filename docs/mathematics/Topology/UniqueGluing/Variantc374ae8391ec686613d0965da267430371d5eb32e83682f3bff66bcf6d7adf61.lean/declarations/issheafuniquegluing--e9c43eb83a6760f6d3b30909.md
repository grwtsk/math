# IsSheafUniqueGluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2228a3ffe740929ff6f06ad6bb909f445add6aaf3161e541e35205dfde8f711b",
  "kind": "def",
  "lexical_name": "IsSheafUniqueGluing",
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
  "slug": "issheafuniquegluing--e9c43eb83a6760f6d3b30909",
  "source": {
    "blob": "e1557d076c227b04889fc3b1202977571b43a66e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9c43eb83a6760f6d3b309095b082df3e3d7e6b238d88b9a688482de3399cac5",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2228a3ffe740929ff6f06ad6bb909f445add6aaf3161e541e35205dfde8f711b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSheafUniqueGluing : Prop :=
  ∀ ⦃ι : Type x⦄ (U : ι → Opens X) (sf : ∀ i : ι, ToType (F.obj (op (U i)))),
    IsCompatible F U sf → ∃! s : ToType (F.obj (op (iSup U))), IsGluing F U sf s

end

section TypeValued

variable {X : TopCat.{x}} {F : Presheaf Type* X} {ι : Type*} {U : ι → Opens X}

/-- Given sections over a family of open sets, extend it to include
  sections over pairwise intersections of the open sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1557d076c227b04889fc3b1202977571b43a66e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
