# ofBaseChange_tmul_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3b251e2-a49b-d953-4d89-ce8dcb052107",
  "kind": "theorem",
  "lexical_name": "ofBaseChange_tmul_ι",
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
  "slug": "ofbasechange-tmul--a039cc34c4ab903727ebfa2b",
  "source": {
    "blob": "9aa5279c1231f11bf889c68d1d0ce694020ce695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a039cc34c4ab903727ebfa2bd57b81c2c764cb72331a07071d2058e94e028164",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3b251e2-a49b-d953-4d89-ce8dcb052107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem ofBaseChange_tmul_ι (Q : QuadraticForm R V) (z : A) (v : V) :
    ofBaseChange A Q (z ⊗ₜ ι Q v) = ι (Q.baseChange A) (z ⊗ₜ v) := by
  show algebraMap _ _ z * ofBaseChangeAux A Q (ι Q v) = ι (Q.baseChange A) (z ⊗ₜ[R] v)
  rw [ofBaseChangeAux_ι, ← Algebra.smul_def, ← map_smul, TensorProduct.smul_tmul', smul_eq_mul,
    mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aa5279c1231f11bf889c68d1d0ce694020ce695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
