# exists_eq_pow_of_mul_eq_pow_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9d1f1f0-1cfa-086e-0b5f-ffd157431e20",
  "kind": "theorem",
  "lexical_name": "exists_eq_pow_of_mul_eq_pow_of_coprime",
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
  "slug": "exists-eq-pow-of-mul-eq-pow-of-coprime--79bf308098c29de91b658341",
  "source": {
    "blob": "09d1e8368230d25e20c3ee040463e27f381ad896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79bf308098c29de91b6583411a39b8454d943130c046a51e616e1768138ea58f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9d1f1f0-1cfa-086e-0b5f-ffd157431e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_pow_of_mul_eq_pow_of_coprime {R : Type*} [CommSemiring R]
    [GCDMonoid R] [Subsingleton Rˣ] {a b c : R} {n : ℕ} (cp : IsCoprime a b) (h : a * b = c ^ n) :
    ∃ d : R, a = d ^ n := by
  refine exists_eq_pow_of_mul_eq_pow (isUnit_of_dvd_one ?_) h
  obtain ⟨x, y, hxy⟩ := cp
  rw [← hxy]
  exact dvd_add (dvd_mul_of_dvd_right (gcd_dvd_left _ _) _)
    (dvd_mul_of_dvd_right (gcd_dvd_right _ _) _)

nonrec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d1e8368230d25e20c3ee040463e27f381ad896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
