# Module.length_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cabead27-bd14-1f71-7a33-aa3fbc10db8b",
  "kind": "lemma",
  "lexical_name": "Module.length_of_free",
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
  "slug": "module-length-of-free--edf5934f8668c54ac4786e92",
  "source": {
    "blob": "ce4267e1ee64cc3512e8131b8e1eedee64a949b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 245,
    "path": "GRWTSK/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edf5934f8668c54ac4786e925c094b29bc60f37f6073034061d974245c3dd550",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cabead27-bd14-1f71-7a33-aa3fbc10db8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.length_of_free [Module.Free R M] :
    Module.length R M = (Module.rank R M).toENat * Module.length R R := by
  let b := Module.Free.chooseBasis R M
  nontriviality R
  nontriviality M
  by_cases H : Module.length R R = ⊤
  · rw [b.repr.length_eq, Module.length_finsupp, H, ENat.mul_top', ENat.mul_top']
    congr 1
    simp [ENat.card_eq_zero_iff_empty, rank_pos_of_free.ne']
  rw [← ne_eq, Module.length_ne_top_iff, isFiniteLength_iff_isNoetherian_isArtinian] at H
  cases H
  let b := Module.Free.chooseBasis R M
  rw [b.repr.length_eq, Module.length_finsupp, Free.rank_eq_card_chooseBasisIndex, ENat.card]

variable (R M) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4267e1ee64cc3512e8131b8e1eedee64a949b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
