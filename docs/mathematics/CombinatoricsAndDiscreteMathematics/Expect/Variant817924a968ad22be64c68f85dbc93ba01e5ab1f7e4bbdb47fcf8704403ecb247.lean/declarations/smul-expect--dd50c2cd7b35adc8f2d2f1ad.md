# smul_expect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc24d61f-44ea-c02f-c04d-527aac7a53df",
  "kind": "lemma",
  "lexical_name": "smul_expect",
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
  "slug": "smul-expect--dd50c2cd7b35adc8f2d2f1ad",
  "source": {
    "blob": "c4e1f4eb14651b43bec5daa17d6b71107a587c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant817924a968ad22be64c68f85dbc93ba01e5ab1f7e4bbdb47fcf8704403ecb247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd50c2cd7b35adc8f2d2f1adf110d4995b37946ed3dedf504dc47a07b6a9eeb0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variant817924a968ad22be64c68f85dbc93ba01e5ab1f7e4bbdb47fcf8704403ecb247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc24d61f-44ea-c02f-c04d-527aac7a53df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smul_expect {G : Type*} [DistribSMul G M] [SMulCommClass G ℚ≥0 M] (a : G)
    (s : Finset ι) (f : ι → M) : a • 𝔼 i ∈ s, f i = 𝔼 i ∈ s, a • f i := by
  simp only [expect, smul_sum, smul_comm]

end AddCommMonoid

section AddCommGroup
variable [AddCommGroup M] [Module ℚ≥0 M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variant817924a968ad22be64c68f85dbc93ba01e5ab1f7e4bbdb47fcf8704403ecb247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant817924a968ad22be64c68f85dbc93ba01e5ab1f7e4bbdb47fcf8704403ecb247.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e1f4eb14651b43bec5daa17d6b71107a587c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
