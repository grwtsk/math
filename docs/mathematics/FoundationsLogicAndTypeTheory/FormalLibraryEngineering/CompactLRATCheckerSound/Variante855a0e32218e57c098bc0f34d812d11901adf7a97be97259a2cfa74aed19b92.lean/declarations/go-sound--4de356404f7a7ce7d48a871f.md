# go_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8febca86-5661-b2d4-740e-2cc456ec85e0",
  "kind": "theorem",
  "lexical_name": "go_sound",
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
  "slug": "go-sound--4de356404f7a7ce7d48a871f",
  "source": {
    "blob": "3e4a47d78bdf6994bcd963d81b0ab0334a161faa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATCheckerSound/Variante855a0e32218e57c098bc0f34d812d11901adf7a97be97259a2cfa74aed19b92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4de356404f7a7ce7d48a871f29501869c5f6d5732f5d93331909108505ec1858",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATCheckerSound/Variante855a0e32218e57c098bc0f34d812d11901adf7a97be97259a2cfa74aed19b92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8febca86-5661-b2d4-740e-2cc456ec85e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_sound (f : DefaultFormula n) (proof : Array IntAction) (idx : Nat)
    (h1 : Formula.ReadyForRupAdd f) (h2 : Formula.ReadyForRatAdd f) :
    compactLratChecker.go f proof idx = .success → Unsatisfiable (PosFin n) f := by
  fun_induction compactLratChecker.go
  case case1 ih1 => apply ih1 <;> assumption
  case case2 _ _ _ _ _ hints _ _ h3 =>
    intro _
    apply addEmptyCaseSound (rupHints := hints)
    · assumption
    · simp [h3]
  case case3 => simp
  case case4 => grind [Unsatisfiable, Liff]
  case case5 => simp
  case case6 => grind [Equisat, Clause.limplies_iff_mem]
  case case7 => simp
  case case8 ih1 => apply ih1 <;> assumption
  case case9 ih1 =>
    intro h3 p pf
    apply ih1 (by grind) (by grind) h3 p
    apply Formula.limplies_delete
    assumption
  case case10 => simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATCheckerSound/Variante855a0e32218e57c098bc0f34d812d11901adf7a97be97259a2cfa74aed19b92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATCheckerSound/Variante855a0e32218e57c098bc0f34d812d11901adf7a97be97259a2cfa74aed19b92.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e4a47d78bdf6994bcd963d81b0ab0334a161faa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
