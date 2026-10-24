# irrational_sqrt_rat_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a5782ef-f175-a047-ca86-af1241b35b77",
  "kind": "theorem",
  "lexical_name": "irrational_sqrt_rat_iff",
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
  "slug": "irrational-sqrt-rat-iff--42ba13ae0897d3f12cc3ac62",
  "source": {
    "blob": "c8038b6e21aa94e25d420aac57bf9e9b47d7d9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 119,
    "path": "GRWTSK/Algebra/Irrational/Variant5641b0990d3f6f538b6e90cfe736131fd030b7b3e692b6173411d3e3f2a09c96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42ba13ae0897d3f12cc3ac62f1c815644dd9a5ca610bbfb961d5bbaafa6e9895",
  "verification": {
    "reference": "docs/verification/Algebra/Irrational/Variant5641b0990d3f6f538b6e90cfe736131fd030b7b3e692b6173411d3e3f2a09c96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a5782ef-f175-a047-ca86-af1241b35b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irrational_sqrt_rat_iff (q : ℚ) :
    Irrational (Real.sqrt q) ↔ Rat.sqrt q * Rat.sqrt q ≠ q ∧ 0 ≤ q :=
  if H1 : Rat.sqrt q * Rat.sqrt q = q then
    iff_of_false
      (not_not_intro
        ⟨Rat.sqrt q, by
          rw [← H1, cast_mul, sqrt_mul_self (cast_nonneg.2 <| Rat.sqrt_nonneg q), sqrt_eq,
            abs_of_nonneg (Rat.sqrt_nonneg q)]⟩)
      fun h => h.1 H1
  else
    if H2 : 0 ≤ q then
      iff_of_true
        (fun ⟨r, hr⟩ =>
          H1 <|
            (exists_mul_self _).1
              ⟨r, by
                rwa [eq_comm, sqrt_eq_iff_mul_self_eq (cast_nonneg.2 H2), ← cast_mul,
                      Rat.cast_inj] at hr
                rw [← hr]
                exact Real.sqrt_nonneg _⟩)
        ⟨H1, H2⟩
    else
      iff_of_false
        (not_not_intro
          ⟨0, by
            rw [cast_zero]
            exact (sqrt_eq_zero_of_nonpos (Rat.cast_nonpos.2 <| le_of_not_le H2)).symm⟩)
        fun h => H2 h.2
#align irrational_sqrt_rat_iff irrational_sqrt_rat_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Irrational/Variant5641b0990d3f6f538b6e90cfe736131fd030b7b3e692b6173411d3e3f2a09c96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Irrational/Variant5641b0990d3f6f538b6e90cfe736131fd030b7b3e692b6173411d3e3f2a09c96.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8038b6e21aa94e25d420aac57bf9e9b47d7d9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
