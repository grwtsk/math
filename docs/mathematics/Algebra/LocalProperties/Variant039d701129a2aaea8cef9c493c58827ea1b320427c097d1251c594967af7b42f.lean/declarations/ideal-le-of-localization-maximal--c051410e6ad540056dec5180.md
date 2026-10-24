# Ideal.le_of_localization_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35b8347cfffef2a5d92031d75acf54bd7dc4d46d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd9c39f8-da3a-5068-fb78-b2e675fe4b79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69f5b384-eba3-1b49-af75-b4bcda564b56",
  "kind": "theorem",
  "lexical_name": "Ideal.le_of_localization_maximal",
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
  "slug": "ideal-le-of-localization-maximal--c051410e6ad540056dec5180",
  "source": {
    "blob": "35b8347cfffef2a5d92031d75acf54bd7dc4d46d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 225,
    "path": "GRWTSK/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c051410e6ad540056dec51808d835b05603624ac4a5fa9de51ab3fb6bf408f4b",
  "verification": {
    "reference": "docs/verification/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69f5b384-eba3-1b49-af75-b4bcda564b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.le_of_localization_maximal {I J : Ideal R}
    (h : ∀ (P : Ideal R) (hP : P.IsMaximal),
      Ideal.map (algebraMap R (Localization.AtPrime P)) I ≤
        Ideal.map (algebraMap R (Localization.AtPrime P)) J) :
    I ≤ J := by
  intro x hx
  suffices J.colon (Ideal.span {x}) = ⊤ by
    simpa using Submodule.mem_colon.mp
      (show (1 : R) ∈ J.colon (Ideal.span {x}) from this.symm ▸ Submodule.mem_top) x
      (Ideal.mem_span_singleton_self x)
  refine' Not.imp_symm (J.colon (Ideal.span {x})).exists_le_maximal _
  push_neg
  intro P hP le
  obtain ⟨⟨⟨a, ha⟩, ⟨s, hs⟩⟩, eq⟩ :=
    (IsLocalization.mem_map_algebraMap_iff P.primeCompl _).mp (h P hP (Ideal.mem_map_of_mem _ hx))
  rw [← _root_.map_mul, ← sub_eq_zero, ← map_sub] at eq
  obtain ⟨⟨m, hm⟩, eq⟩ := (IsLocalization.map_eq_zero_iff P.primeCompl _ _).mp eq
  refine' hs ((hP.isPrime.mem_or_mem (le (Ideal.mem_colon_singleton.mpr _))).resolve_right hm)
  simp only [Subtype.coe_mk, mul_sub, sub_eq_zero, mul_comm x s, mul_left_comm] at eq
  simpa only [mul_assoc, eq] using J.mul_mem_left m ha
#align ideal.le_of_localization_maximal Ideal.le_of_localization_maximal

/-- Let `I J : Ideal R`. If the localization of `I` at each maximal ideal `P` is equal to
the localization of `J` at `P`, then `I = J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalProperties/Variant039d701129a2aaea8cef9c493c58827ea1b320427c097d1251c594967af7b42f.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35b8347cfffef2a5d92031d75acf54bd7dc4d46d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
