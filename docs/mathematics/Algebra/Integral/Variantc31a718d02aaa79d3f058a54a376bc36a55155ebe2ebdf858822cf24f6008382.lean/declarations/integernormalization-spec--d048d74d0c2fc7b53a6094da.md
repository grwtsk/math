# integerNormalization_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a73d8467-8df3-a02c-e80d-4022755b2c71",
  "kind": "theorem",
  "lexical_name": "integerNormalization_spec",
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
  "slug": "integernormalization-spec--d048d74d0c2fc7b53a6094da",
  "source": {
    "blob": "bbf5dd8b32e11a86356b34fd6b2a29add25ac3a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d048d74d0c2fc7b53a6094daa52659408f4f16d2d2a2edde9f3113e31c4e54ba",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a73d8467-8df3-a02c-e80d-4022755b2c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerNormalization_spec (p : S[X]) :
    ∃ b : M, ∀ i, algebraMap R S ((integerNormalization M p).coeff i) = (b : R) • p.coeff i := by
  classical
  use Classical.choose (exist_integer_multiples_of_finset M (p.support.image p.coeff))
  intro i
  rw [integerNormalization_coeff, coeffIntegerNormalization]
  split_ifs with hi
  · exact
      Classical.choose_spec
        (Classical.choose_spec (exist_integer_multiples_of_finset M (p.support.image p.coeff))
          (p.coeff i) (Finset.mem_image.mpr ⟨i, hi, rfl⟩))
  · rw [RingHom.map_zero, notMem_support_iff.mp hi, smul_zero]
    -- Porting note: was `convert (smul_zero _).symm, ...`

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf5dd8b32e11a86356b34fd6b2a29add25ac3a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
