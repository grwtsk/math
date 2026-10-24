# literal_first_endpoint_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b75b8d0-fb7c-8c33-451e-1961d6f00089",
  "kind": "theorem",
  "lexical_name": "literal_first_endpoint_change",
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
  "slug": "literal-first-endpoint-change--09ab1372942856bcf8fc4377",
  "source": {
    "blob": "c39250e8edd184db026954144b418ef9bc0d3018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variante297f51f204c717d16a2f7214723436bf7366c5a0718e6dbb03f9c6bf2714aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ab1372942856bcf8fc43771d2eb3f35fcedfa8a57ab2faf3a0a3e3e0a202d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt02/Variante297f51f204c717d16a2f7214723436bf7366c5a0718e6dbb03f9c6bf2714aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b75b8d0-fb7c-8c33-451e-1961d6f00089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_first_endpoint_change (A B : ℝ) (hA : 1 ≤ A) (hB : 1 ≤ B) :
    synthesis (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B) (firstAt B) -
      synthesis (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A) (firstAt A) =
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB) -
          originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A ∩ longInventory B) false false mangoldtCoefficient +
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B \ longInventory A) false false mangoldtCoefficient -
      finiteProfile (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A \ longInventory B) false false mangoldtCoefficient := by
  unfold firstAt mangoldtCoordinates
  rw [synthesis_endpoint_change]
  simp [finiteProfile]

/-- The distinct literal centered state pays both the source change and the
exact cutoff-driven beta change, together with added and removed labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt02/Variante297f51f204c717d16a2f7214723436bf7366c5a0718e6dbb03f9c6bf2714aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variante297f51f204c717d16a2f7214723436bf7366c5a0718e6dbb03f9c6bf2714aee.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39250e8edd184db026954144b418ef9bc0d3018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
