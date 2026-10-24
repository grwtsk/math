# exists_irreducible_of_degree_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47e3bf04-8153-2c98-6528-253953825417",
  "kind": "theorem",
  "lexical_name": "exists_irreducible_of_degree_pos",
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
  "slug": "exists-irreducible-of-degree-pos--fe571c8878bd701f74d9165c",
  "source": {
    "blob": "9bb83d9ee95d75fe21a92648874bdd073188b94f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 76,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe571c8878bd701f74d9165c123a973d5d70adc65b4dbba36c78c7eb0468a2c3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e3bf04-8153-2c98-6528-253953825417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_irreducible_of_degree_pos (hf : 0 < f.degree) : ∃ g, Irreducible g ∧ g ∣ f :=
  WfDvdMonoid.exists_irreducible_factor (fun huf => ne_of_gt hf <| degree_eq_zero_of_isUnit huf)
    fun hf0 => not_lt_of_gt hf <| hf0.symm ▸ (@degree_zero R _).symm ▸ WithBot.bot_lt_coe _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variantd5c14827a5213744b3e52c0ed7b62f87dd8fb0a067bf56225258640246b60950.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bb83d9ee95d75fe21a92648874bdd073188b94f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
