# resolveCarrierOwnership_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69488041-8ecc-32ac-a7be-6317543396fe",
  "kind": "theorem",
  "lexical_name": "resolveCarrierOwnership_fields",
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
  "slug": "resolvecarrierownership-fields--a2f4e7ec9a32b19d74635f1b",
  "source": {
    "blob": "a5f5bc6df80e54bb39e21d79973c0110075965f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1357,
    "line": 1318,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f4e7ec9a32b19d74635f1b77b41f000f9bed13da215b0654fd83492d428062",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69488041-8ecc-32ac-a7be-6317543396fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1318–1357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolveCarrierOwnership_fields {Carrier : Type}
    (configuration : ConfiguredOwnership) (candidates : List Carrier)
    (direction : TraversalDirection) (corner : SquareCorner)
    (result : CarrierOwnershipResult Carrier)
    (success : resolveCarrierOwnership configuration candidates direction corner =
      .ok result) :
    ownershipMaskResult configuration candidates.length direction corner =
        .ok result.mask ∧
      result.candidates = candidates ∧
      result.normalizedWeights = normalizedMaskListWeights result.mask ∧
      result.owners = selectedCarrierOwners candidates result.mask ∧
      result.mask.length = candidates.length ∧
      result.normalizedWeights.length = candidates.length := by
  unfold resolveCarrierOwnership at success
  cases maskResult : ownershipMaskResult configuration candidates.length
      direction corner with
  | error failure =>
      rw [maskResult] at success
      contradiction
  | ok mask =>
      rw [maskResult] at success
      by_cases empty : selectedMaskListCount mask = 0
      · simp [empty] at success
      · simp only [empty] at success
        have equation :
            { candidates := candidates
              mask := mask
              normalizedWeights := normalizedMaskListWeights mask
              owners := selectedCarrierOwners candidates mask } = result :=
          Except.ok.inj success
        have maskLength : mask.length = candidates.length :=
          ownershipMaskResult_length configuration candidates.length direction
            corner mask maskResult
        cases equation
        refine ⟨?_, rfl, rfl, rfl, maskLength, ?_⟩
        · change Except.ok mask = Except.ok mask
          rfl
        · simp [normalizedMaskListWeights, maskLength]

/-- The smart resolver always constructs one coherent composite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean#L1318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5f5bc6df80e54bb39e21d79973c0110075965f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
