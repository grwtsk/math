# eq_zero_of_comapDomain_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5b64bed42f59ef2e8765524b24d6104e6a0f7c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 709,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecdce8ab-796a-df82-8c5d-b2b1c05e474f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8145e0cb-7084-4a4e-fb06-896a24a87e8d",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_comapDomain_eq_zero",
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
  "slug": "eq-zero-of-comapdomain-eq-zero--0fb5bbb98041a788c2169620",
  "source": {
    "blob": "e5b64bed42f59ef2e8765524b24d6104e6a0f7c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 725,
    "line": 709,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fb5bbb98041a788c216962026e8e44c8e3da6d19847de533c21040a49c98c6b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8145e0cb-7084-4a4e-fb06-896a24a87e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–725.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_comapDomain_eq_zero [AddCommMonoid M] (f : α → β) (l : β →₀ M)
    (hf : Set.BijOn f (f ⁻¹' ↑l.support) ↑l.support) : comapDomain f l hf.injOn = 0 → l = 0 := by
  rw [← support_eq_empty, ← support_eq_empty, comapDomain]
  simp only [Finset.ext_iff, Finset.not_mem_empty, iff_false_iff, mem_preimage]
  intro h a ha
  cases' hf.2.2 ha with b hb
  exact h b (hb.2.symm ▸ ha)
#align finsupp.eq_zero_of_comap_domain_eq_zero Finsupp.eq_zero_of_comapDomain_eq_zero

section FInjective

section Zero

variable [Zero M]

/-- Note the `hif` argument is needed for this to work in `rw`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b64bed42f59ef2e8765524b24d6104e6a0f7c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
