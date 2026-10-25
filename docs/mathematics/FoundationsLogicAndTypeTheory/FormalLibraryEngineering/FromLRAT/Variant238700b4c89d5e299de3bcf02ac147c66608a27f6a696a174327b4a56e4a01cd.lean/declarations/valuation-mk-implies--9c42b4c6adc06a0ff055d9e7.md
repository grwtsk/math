# Valuation.mk_implies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:856afd0e-e469-a26d-799a-7930e49097d9",
  "kind": "theorem",
  "lexical_name": "Valuation.mk_implies",
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
  "slug": "valuation-mk-implies--9c42b4c6adc06a0ff055d9e7",
  "source": {
    "blob": "b4ab0143bb599d2d5e7474dd92188f75f89c80e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c42b4c6adc06a0ff055d9e7357617fe475f0f270a58d587827d7697b33f3577",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:856afd0e-e469-a26d-799a-7930e49097d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valuation.mk_implies {p} {as ps} (as₁) : as = List.reverseAux as₁ ps →
    (Valuation.mk as).implies p ps as₁.length → p := by
  induction ps generalizing as₁ with
  | nil => exact fun _ ↦ id
  | cons a as ih =>
    refine fun e H ↦ @ih (a::as₁) e (H ?_)
    subst e; clear ih H
    suffices ∀ n n', n' = List.length as₁ + n →
      ∀ bs, mk (as₁.reverseAux bs) n' ↔ mk bs n from this 0 _ rfl (a::as)
    induction as₁ with
    | nil => simp
    | cons b as₁ ih => simpa using fun n bs ↦ ih (n+1) _ (Nat.succ_add ..) _

/-- Asserts that `¬⟦f⟧_v` implies `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant238700b4c89d5e299de3bcf02ac147c66608a27f6a696a174327b4a56e4a01cd.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4ab0143bb599d2d5e7474dd92188f75f89c80e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
