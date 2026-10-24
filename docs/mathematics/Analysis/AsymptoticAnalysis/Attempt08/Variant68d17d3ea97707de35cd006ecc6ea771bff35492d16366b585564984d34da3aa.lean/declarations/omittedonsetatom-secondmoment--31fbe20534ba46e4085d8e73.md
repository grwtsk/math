# omittedOnsetAtom_secondMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7027e904-7792-f0d7-c5dd-3b013a247a67",
  "kind": "theorem",
  "lexical_name": "omittedOnsetAtom_secondMoment",
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
  "slug": "omittedonsetatom-secondmoment--31fbe20534ba46e4085d8e73",
  "source": {
    "blob": "75ed918bec5e5dde79e578ddec347813dca1d32d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31fbe20534ba46e4085d8e731af1e6658f0604127fd7b22e9d1f983cd3729ea1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7027e904-7792-f0d7-c5dd-3b013a247a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omittedOnsetAtom_secondMoment (t : ℝ) (ht : 0<t) (p : Nat.Primes) (k : ℕ) :
    t^2*omittedOnsetAtom t p k ≤ primeMomentAtom 2 p k := by
  have hp : 0<(p.val:ℝ) := by exact_mod_cast p.property.pos
  have hl := Real.log_nonneg (show (1:ℝ)≤p.val by exact_mod_cast p.property.one_le)
  unfold omittedOnsetAtom
  split_ifs with h
  · have hc : 0 ≤ Real.log (p.val:ℝ)/(p.val:ℝ)^(k+2) := by positivity
    have hs : t^2 ≤ (↑(k+2)*Real.log (p.val:ℝ))^2 := by nlinarith
    have hm := mul_le_mul_of_nonneg_right hs hc
    calc
      t^2*(Real.log (p.val:ℝ)/(p.val:ℝ)^(k+2)) ≤
        (↑(k+2)*Real.log (p.val:ℝ))^2*(Real.log (p.val:ℝ)/(p.val:ℝ)^(k+2)) := hm
      _ = primeMomentAtom 2 p k := by unfold primeMomentAtom momentAtom; ring
  · simpa only [mul_zero,primeMomentAtom] using momentAtom_nonneg 2 p.val k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ed918bec5e5dde79e578ddec347813dca1d32d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
