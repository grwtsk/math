# isNilpotentOfIsNilpotentSpanSupEqTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f7a8dd6-7589-f224-f8e7-ac727f1b47b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1d48f85-5453-9f16-5d37-effa3ed85230",
  "kind": "theorem",
  "lexical_name": "isNilpotentOfIsNilpotentSpanSupEqTop",
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
  "slug": "isnilpotentofisnilpotentspansupeqtop--feb93946db9e45848d72aa82",
  "source": {
    "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feb93946db9e45848d72aa827443debc1b6bef9a0c1eda8b07a1018d2cc08a55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d48f85-5453-9f16-5d37-effa3ed85230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNilpotentOfIsNilpotentSpanSupEqTop (hnp : IsNilpotent <| toEndomorphism R L M x)
    (hIM : IsNilpotent R I M) : IsNilpotent R L M := by
  obtain ⟨n, hn⟩ := hnp
  obtain ⟨k, hk⟩ := hIM
  have hk' : I.lcs M k = ⊥ := by
    simp only [← coe_toSubmodule_eq_iff, I.coe_lcs_eq, hk, bot_coeSubmodule]
  suffices ∀ l, lowerCentralSeries R L M (l * n) ≤ I.lcs M l by
    use k * n
    simpa [hk'] using this k
  intro l
  induction' l with l ih
  · simp
  · exact (l.succ_mul n).symm ▸ lcs_le_lcs_of_is_nilpotent_span_sup_eq_top hxI hn ih
#align lie_submodule.is_nilpotent_of_is_nilpotent_span_sup_eq_top LieSubmodule.isNilpotentOfIsNilpotentSpanSupEqTop

end LieSubmodule

section LieAlgebra

-- Porting note: somehow this doesn't hide `LieModule.IsNilpotent`, so `_root_.IsNilpotent` is used
-- a number of times below.
open LieModule hiding IsNilpotent

variable (R L)

/-- A Lie algebra `L` is said to be Engelian if a sufficient condition for any `L`-Lie module `M` to
be nilpotent is that the image of the map `L → End(M)` consists of nilpotent elements.

Engel's theorem `LieAlgebra.isEngelian_of_isNoetherian` states that any Noetherian Lie algebra is
Engelian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb8124bd3544fda957c017ee7b875e6d4284068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
