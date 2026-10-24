# eq_isUnit_map_mul_irreducible_of_irreducible_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72df54bd2ccfcfed0b1806bcfdefcb54f2313cb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4a6626eb8ad4b5d5d058b94dc9c0d3ea11a0035ce968f89c74d8d390c0f1b64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca5dcbfc-570b-59fa-9494-095fc1f272aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4b35985-c126-6937-cb3c-e0defbbf717f",
  "kind": "theorem",
  "lexical_name": "eq_isUnit_map_mul_irreducible_of_irreducible_map",
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
  "slug": "eq-isunit-map-mul-irreducible-of-irreducible-map--0f66c4eab764955fa3fb34db",
  "source": {
    "blob": "72df54bd2ccfcfed0b1806bcfdefcb54f2313cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/Algebra/GroupTheory/UniqueFactorization/Variantf4a6626eb8ad4b5d5d058b94dc9c0d3ea11a0035ce968f89c74d8d390c0f1b64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f66c4eab764955fa3fb34db85b6485996820acd92cbf7b0010f32ab0c813599",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/UniqueFactorization/Variantf4a6626eb8ad4b5d5d058b94dc9c0d3ea11a0035ce968f89c74d8d390c0f1b64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4b35985-c126-6937-cb3c-e0defbbf717f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_isUnit_map_mul_irreducible_of_irreducible_map [WfDvdMonoid M] (f : S.LocalizationMap N)
    {m : M} (hm : Irreducible (f m)) : ∃ u m' : M, IsUnit (f u) ∧ Irreducible m' ∧ m = u * m' := by
  induction m using WfDvdMonoid.induction_on_irreducible with
  | zero => exact (hm.ne_zero f.map_zero).elim
  | unit u hu => exact (hm.not_isUnit (hu.map f)).elim
  | mul a i ha0 hi ha =>
    rw [map_mul, irreducible_mul_iff] at hm
    obtain hia | hai := hm
    · exact ⟨a, i, hia.2, hi, mul_comm ..⟩
    · obtain ⟨u, m', hu, hm', rfl⟩ := ha hai.1
      exact ⟨u * i, m', by simpa using hu.mul hai.2, hm', by ac_rfl⟩

open UniqueFactorizationMonoid in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/UniqueFactorization/Variantf4a6626eb8ad4b5d5d058b94dc9c0d3ea11a0035ce968f89c74d8d390c0f1b64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/UniqueFactorization/Variantf4a6626eb8ad4b5d5d058b94dc9c0d3ea11a0035ce968f89c74d8d390c0f1b64.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72df54bd2ccfcfed0b1806bcfdefcb54f2313cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
