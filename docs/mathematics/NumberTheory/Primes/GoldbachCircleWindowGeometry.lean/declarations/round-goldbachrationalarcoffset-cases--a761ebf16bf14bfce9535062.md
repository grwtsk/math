# round_goldbachRationalArcOffset_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42d6291b-fb7e-f955-2b4a-80dee62c7a90",
  "kind": "theorem",
  "lexical_name": "round_goldbachRationalArcOffset_cases",
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
  "slug": "round-goldbachrationalarcoffset-cases--a761ebf16bf14bfce9535062",
  "source": {
    "blob": "e5d105564d0c8c61fea6bff4880d9dc2750c56b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a761ebf16bf14bfce9535062efc0f7d96670f124d0d2a7bae3ac426b184b9403",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42d6291b-fb7e-f955-2b4a-80dee62c7a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem round_goldbachRationalArcOffset_cases
    {Q a q : ℕ} {x : ℝ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q)
    (hx : x ∈ Set.Ioc (0 : ℝ) 1) :
    round (goldbachRationalArcOffset a q x) = (-1 : ℤ) ∨
      round (goldbachRationalArcOffset a q x) = 0 ∨
      round (goldbachRationalArcOffset a q x) = 1 := by
  have hc :=
    goldbachRationalArcCenter_mem_Ico hindex
  let β := goldbachRationalArcOffset a q x
  have hβlower : (-1 : ℝ) < β := by
    dsimp [β, goldbachRationalArcOffset]
    linarith [hx.1, hc.2]
  have hβupper : β ≤ (1 : ℝ) := by
    dsimp [β, goldbachRationalArcOffset]
    linarith [hx.2, hc.1]
  have hnearest :
      |β - (round β : ℝ)| ≤ (1 / 2 : ℝ) := by
    simpa using abs_sub_round β
  have hlowerR : (-2 : ℝ) < (round β : ℝ) := by
    rcases abs_le.mp hnearest with ⟨_, hright⟩
    linarith
  have hupperR : (round β : ℝ) < (2 : ℝ) := by
    rcases abs_le.mp hnearest with ⟨hleft, _⟩
    linarith
  have hlowerZ : (-2 : ℤ) < round β := by
    exact_mod_cast hlowerR
  have hupperZ : round β < (2 : ℤ) := by
    exact_mod_cast hupperR
  change round β = (-1 : ℤ) ∨ round β = 0 ∨ round β = 1
  omega

/-- Membership in the raw three-lift arc is exactly membership of the local
offset in the corresponding circle window, once the real point is restricted
to `(0,1]`. No small-radius assumption is needed: the three lifts contain a
nearest representative for every offset in the selected fundamental domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCircleWindowGeometry.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d105564d0c8c61fea6bff4880d9dc2750c56b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
