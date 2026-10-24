# Matrix.toLinearMap₂'Aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92d145d911bdc9141380e38a3ed4f8506fafec76bd53609096ff471d6c114bd7",
  "kind": "def",
  "lexical_name": "Matrix.toLinearMap₂'Aux",
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
  "slug": "matrix-tolinearmap-aux--1f8c1d73eddbc7fd03b01656",
  "source": {
    "blob": "1049649acf248accb66a28470beb93788cca2c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f8c1d73eddbc7fd03b01656fcdd9f3db9e7c46aa034ec3299a4224c432989f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92d145d911bdc9141380e38a3ed4f8506fafec76bd53609096ff471d6c114bd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matrix.toLinearMap₂'Aux (f : Matrix n m N₂) : (n → R₁) →ₛₗ[σ₁] (m → R₂) →ₛₗ[σ₂] N₂ :=
  -- porting note: we don't seem to have `∑ i j` as valid notation yet
  mk₂'ₛₗ σ₁ σ₂ (fun (v : n → R₁) (w : m → R₂) => ∑ i, ∑ j, σ₂ (w j) • σ₁ (v i) • f i j)
    (fun _ _ _ => by simp only [Pi.add_apply, map_add, smul_add, sum_add_distrib, add_smul])
    (fun c v w => by
      simp only [Pi.smul_apply, smul_sum, smul_eq_mul, σ₁.map_mul, ← smul_comm _ (σ₁ c),
        MulAction.mul_smul])
    (fun _ _ _ => by simp only [Pi.add_apply, map_add, add_smul, smul_add, sum_add_distrib])
    (fun _ v w => by
      simp only [Pi.smul_apply, smul_eq_mul, map_mul, MulAction.mul_smul, smul_sum])

variable [DecidableEq n] [DecidableEq m]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1049649acf248accb66a28470beb93788cca2c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
