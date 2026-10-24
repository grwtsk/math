# eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f2c8bf7-7e35-a783-f0ba-01e64a97590d",
  "kind": "theorem",
  "lexical_name": "eq_pow",
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
  "slug": "eq-pow--dd2f8fd23802740f15ef06fb",
  "source": {
    "blob": "578ebdd085f48c54d3dfe32fd36be0af80e42198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd2f8fd23802740f15ef06fbd274cd7740535246d00bcb469ea6435c03e1ea9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f2c8bf7-7e35-a783-f0ba-01e64a97590d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow (a : ℤ) : (legendreSym p a : ZMod p) = (a : ZMod p) ^ (p / 2) := by
  cases' eq_or_ne (ringChar (ZMod p)) 2 with hc hc
  · by_cases ha : (a : ZMod p) = 0
    · rw [legendreSym, ha, quadraticChar_zero,
        zero_pow (Nat.div_pos (@Fact.out p.Prime).two_le (succ_pos 1))]
      norm_cast
    · have := (ringChar_zmod_n p).symm.trans hc
      -- p = 2
      subst p
      rw [legendreSym, quadraticChar_eq_one_of_char_two hc ha]
      revert ha
      push_cast
      generalize (a : ZMod 2) = b; fin_cases b
      · tauto
      · simp
  · convert quadraticChar_eq_pow_of_char_ne_two' hc (a : ZMod p)
    norm_cast
    congr
    exact (card p).symm
#align legendre_sym.eq_pow legendreSym.eq_pow

/-- If `p ∤ a`, then `legendreSym p a` is `1` or `-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578ebdd085f48c54d3dfe32fd36be0af80e42198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
