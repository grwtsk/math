# ofBaseChangeAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1916b00edfbbce8aabccb52e654061d2a1176342470151eb3f928d4fa7ae31e5",
  "kind": "def",
  "lexical_name": "ofBaseChangeAux",
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
  "slug": "ofbasechangeaux--c3b3451eef9b6b73a03e56d4",
  "source": {
    "blob": "44d6e5bc298baf9535b73a8d80d98044c6110b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantaae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3b3451eef9b6b73a03e56d4922fcca3907033437006ba6c27b534a69846657f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variantaae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1916b00edfbbce8aabccb52e654061d2a1176342470151eb3f928d4fa7ae31e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofBaseChangeAux (Q : QuadraticForm R V) :
    CliffordAlgebra Q →ₐ[R] CliffordAlgebra (Q.baseChange A) :=
  CliffordAlgebra.lift Q <| by
    refine ⟨(ι (Q.baseChange A)).restrictScalars R ∘ₗ TensorProduct.mk R A V 1, fun v => ?_⟩
    refine (CliffordAlgebra.ι_sq_scalar (Q.baseChange A) (1 ⊗ₜ v)).trans ?_
    rw [QuadraticForm.baseChange_tmul, one_mul, ← Algebra.algebraMap_eq_smul_one,
      ← IsScalarTower.algebraMap_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variantaae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantaae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44d6e5bc298baf9535b73a8d80d98044c6110b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
