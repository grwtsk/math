# subfield

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff94c598f0cbc0bc9d6ebe3e2dc5cc7395190ec7acbb8e32d973f361c21c8b23",
  "kind": "def",
  "lexical_name": "subfield",
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
  "slug": "subfield--156acf0a5c13be8a125f4a90",
  "source": {
    "blob": "c9f644c80bb1e8de365d21dcfd28821d6bef15be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:156acf0a5c13be8a125f4a9030c279ca98622775324a22c7988cdd871dc6abda",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff94c598f0cbc0bc9d6ebe3e2dc5cc7395190ec7acbb8e32d973f361c21c8b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subfield : Subfield F :=
  Subfield.copy (⨅ m : M, FixedBy.subfield F m) (fixedPoints M F)
    (by ext z; simp [fixedPoints, FixedBy.subfield, iInf, Subfield.mem_sInf]; rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f644c80bb1e8de365d21dcfd28821d6bef15be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
