# decodeBitPlanes_lt_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16612060-8e56-3e3a-6fe6-d2c4ab317dd8",
  "kind": "theorem",
  "lexical_name": "decodeBitPlanes_lt_pow",
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
  "slug": "decodebitplanes-lt-pow--fba539f020b241774df373c2",
  "source": {
    "blob": "faebb625c94eeebc422a3c41d6b9eaa931d22365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fba539f020b241774df373c2928a777dd4901fbe85bb87af26075c04e98e638d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16612060-8e56-3e3a-6fe6-d2c4ab317dd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decodeBitPlanes_lt_pow
    (q : QuantizedMatrix bits rows columns)
    (row : Fin rows)
    (column : Fin columns) :
    decodeBitPlanes q row column < 2 ^ bits := by
  induction bits with
  | zero => simp [decodeBitPlanes]
  | succ bits inductionHypothesis =>
      rw [decodeBitPlanes_succ]
      have htail :
          decodeBitPlanes (fun plane => q plane.succ) row column <
            2 ^ bits :=
        inductionHypothesis (fun plane => q plane.succ)
      have hleast : (if q 0 row column then 1 else 0) ≤ 1 := by
        split <;> simp
      calc
        (if q 0 row column then 1 else 0) +
              2 * decodeBitPlanes (fun plane => q plane.succ) row column ≤
            1 + 2 * decodeBitPlanes (fun plane => q plane.succ) row column :=
          Nat.add_le_add_right hleast _
        _ < 2 * 2 ^ bits := by omega
        _ = 2 ^ (bits + 1) := by
          rw [pow_succ]
          omega

/-- Package every decoded entry together with its proved unsigned range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteSimplexGammaAndObservation/Variantd3ce1df042ea2552/LittleEndianBitPlaneCorrespondence.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faebb625c94eeebc422a3c41d6b9eaa931d22365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
