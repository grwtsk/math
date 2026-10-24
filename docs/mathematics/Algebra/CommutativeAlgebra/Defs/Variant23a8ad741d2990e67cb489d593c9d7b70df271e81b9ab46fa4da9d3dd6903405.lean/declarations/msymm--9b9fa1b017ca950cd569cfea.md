# msymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a6a893867b69b8f0effd5b176734361ee6ce7db5ca0051ab5ce9efe7f4538c3",
  "kind": "def",
  "lexical_name": "msymm",
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
  "slug": "msymm--9b9fa1b017ca950cd569cfea",
  "source": {
    "blob": "bfa681b00c975ecbc24d19e13f3e6fecf301f3db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 388,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b9fa1b017ca950cd569cfea9adffaf90535ba2a91be9ea0d0cd34198fca743b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a6a893867b69b8f0effd5b176734361ee6ce7db5ca0051ab5ce9efe7f4538c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def msymm (μ : n.Partition) : MvPolynomial σ R :=
  ∑ s : {a : Sym σ n // .ofSym a = μ}, (s.1.1.map X).prod

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa681b00c975ecbc24d19e13f3e6fecf301f3db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
