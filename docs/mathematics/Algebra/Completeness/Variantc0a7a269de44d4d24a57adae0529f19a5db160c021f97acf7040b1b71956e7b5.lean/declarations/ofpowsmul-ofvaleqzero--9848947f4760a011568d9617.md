# ofPowSMul_ofValEqZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:903d1c20-6d93-f0ca-d089-fa42ab9bad20",
  "kind": "theorem",
  "lexical_name": "ofPowSMul_ofValEqZero",
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
  "slug": "ofpowsmul-ofvaleqzero--9848947f4760a011568d9617",
  "source": {
    "blob": "04a63bf8866ef608f3fe04f0d99d5fa92c7044a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 119,
    "path": "GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9848947f4760a011568d96179e911ec8cba659130d7664d2523b0286590cc27c",
  "verification": {
    "reference": "docs/verification/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:903d1c20-6d93-f0ca-d089-fa42ab9bad20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPowSMul_ofValEqZero {n : ℕ} {x : AdicCompletion I M} (hxn : x.val n = 0) :
    ofPowSMul I M n (ofValEqZero I hxn) = x := by
  ext i; by_cases! h : n ≤ i
  · obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le' h
    rw [ofPowSMul_val_apply _ rfl, ofValEqZero, ofValEqZeroAux_prop]
  rw [ofPowSMul_val_apply_eq_zero _ h.le, ← x.prop h.le, hxn, _root_.map_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a63bf8866ef608f3fe04f0d99d5fa92c7044a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
