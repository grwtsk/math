# fermatLastTheoremWith'_nat_int_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb540fac-a980-924b-6bf6-a0d1e713456c",
  "kind": "lemma",
  "lexical_name": "fermatLastTheoremWith'_nat_int_tfae",
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
  "slug": "fermatlasttheoremwith-nat-int-tfae--f4703a08ce59d0eb1a70a4e5",
  "source": {
    "blob": "7cb56c5e45d29b9a2b49508ddcf8fa15607a264a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 201,
    "path": "GRWTSK/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4703a08ce59d0eb1a70a4e5991e1028cfda25e36827fed154f3fc99166fbe52",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb540fac-a980-924b-6bf6-a0d1e713456c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fermatLastTheoremWith'_nat_int_tfae (n : ℕ) :
    TFAE [FermatLastTheoremFor n, FermatLastTheoremWith' ℕ n, FermatLastTheoremWith' ℤ n] := by
  tfae_have 2 ↔ 1 := by
    apply fermatLastTheoremWith'_iff_fermatLastTheoremWith
    simp only [Nat.isUnit_iff]
    intro _ _ _ ha hb hc
    rw [ha, hb, hc]
    simp only [one_pow, Nat.reduceAdd, ne_eq, OfNat.ofNat_ne_one, not_false_eq_true]
  tfae_have 3 ↔ 1 := by
    rw [fermatLastTheoremFor_iff_int]
    apply fermatLastTheoremWith'_iff_fermatLastTheoremWith
    intro a b c ha hb hc
    by_cases hn : n = 0
    · subst hn
      simp only [pow_zero, Int.reduceAdd, ne_eq, OfNat.ofNat_ne_one, not_false_eq_true]
    · rw [← isUnit_pow_iff hn, Int.isUnit_iff] at ha hb hc
      -- case division
      rcases ha with ha | ha <;> rcases hb with hb | hb <;> rcases hc with hc | hc <;>
        rw [ha, hb, hc] <;> decide
  tfae_finish

open Finset in
/-- To prove Fermat Last Theorem in any semiring that is a `NormalizedGCDMonoid` one can assume
that the `gcd` of `{a, b, c}` is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cb56c5e45d29b9a2b49508ddcf8fa15607a264a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
