# ofNanoseconds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e162d3e5babf0d365c2f1ae5823346eccdb6d8f36b40c08402935c7105ee38f",
  "kind": "def",
  "lexical_name": "ofNanoseconds",
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
  "slug": "ofnanoseconds--a6e3c02a88b37dcaa8101e9a",
  "source": {
    "blob": "6e4c14b0662480483397a9601ea33de28b5d2eac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duration/Varianta7654dee7594fe3d7931e178e8a64605084b6231743de5bfc5979bf2e33ac782.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6e3c02a88b37dcaa8101e9a5de45e2333aa4b154faa7d9dfe6959140e4276ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duration/Varianta7654dee7594fe3d7931e178e8a64605084b6231743de5bfc5979bf2e33ac782.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e162d3e5babf0d365c2f1ae5823346eccdb6d8f36b40c08402935c7105ee38f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofNanoseconds (s : Nanosecond.Offset) : Duration := by
  -- TODO: we should be using `s.toSeconds` here, but the proof below depends on this form.
  refine ⟨s.tdiv 1000000000 |>.cast (by decide +kernel), Bounded.LE.byMod s.val 1000000000 (by decide), ?_⟩

  cases Int.le_total s.val 0
  next n => exact Or.inr (And.intro (tdiv_neg n (by decide)) (mod_nonpos 1000000000 n (by decide)))
  next n => exact Or.inl (And.intro (Int.tdiv_nonneg n (by decide)) (Int.tmod_nonneg 1000000000 n))
  where
    mod_nonpos : ∀ {a : Int} (b : Int), (a ≤ 0) → (b ≥ 0) → 0 ≥ a.tmod b
    | .negSucc m, .ofNat n, _, _ => Int.neg_le_neg (Int.tmod_nonneg (↑n) (Int.ofNat_le.mpr (Nat.zero_le (m + 1))))
    | 0, n, _, _ => Int.eq_iff_le_and_ge.mp (Int.zero_tmod n) |>.left

    tdiv_neg {a b : Int} (Ha : a ≤ 0) (Hb : 0 ≤ b) : a.tdiv b ≤ 0 :=
    match a, b, Ha with
    | .negSucc _, .ofNat _, _ => Int.neg_le_neg (Int.ofNat_le.mpr (Nat.zero_le _))
    | 0,  n, _ => Int.eq_iff_le_and_ge.mp (Int.zero_tdiv n) |>.left

/--
Creates a new `Duration` out of `Millisecond.Offset`.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duration/Varianta7654dee7594fe3d7931e178e8a64605084b6231743de5bfc5979bf2e33ac782.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duration/Varianta7654dee7594fe3d7931e178e8a64605084b6231743de5bfc5979bf2e33ac782.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e4c14b0662480483397a9601ea33de28b5d2eac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
