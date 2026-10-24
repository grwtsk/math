# preservesLatticeLoci_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcb1302336ac7637f3f4bb296d55cdff02ccea938573b84727d776dcf813c1c8",
  "kind": "def",
  "lexical_name": "preservesLatticeLoci_symm",
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
  "slug": "preserveslatticeloci-symm--9a70f28dddf71298b34ce4d7",
  "source": {
    "blob": "d52c06d09db7318c08fc1913ab63c887d6e8050e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a70f28dddf71298b34ce4d79f3859cc2372c758e8243e04b5b670b4380198a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcb1302336ac7637f3f4bb296d55cdff02ccea938573b84727d776dcf813c1c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesLatticeLoci_symm {α : Type}
    {source target : CompressedString α}
    (h : PreservesLatticeLoci source target) :
    PreservesLatticeLoci target source :=
  { lookupEquiv := preservesOfDecodeEq h.lookupEquiv.decode_eq.symm
    preservesLookup := ⟨preservesOfDecodeEq h.lookupEquiv.decode_eq.symm⟩
    sliceForward := h.sliceBackward
    sliceBackward := h.sliceForward
    forwardBackward := h.backwardForward
    backwardForward := h.forwardBackward
    containsForward := by
      intro slice i hcontains
      let sourceIndex := transportIndex h.lookupEquiv.decode_eq.symm i
      have htarget :
          Slice.containsFin slice
            (transportIndex h.lookupEquiv.decode_eq sourceIndex) := by
        change slice.containsNat i.val
        exact hcontains
      exact h.containsBackward slice sourceIndex htarget
    containsBackward := by
      intro slice i hcontains
      have hforward :=
        h.containsForward slice
          (transportIndex h.lookupEquiv.decode_eq.symm i)
          hcontains
      change (h.sliceForward slice).containsNat i.val at hforward
      change (h.sliceForward slice).containsNat i.val
      exact hforward }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d52c06d09db7318c08fc1913ab63c887d6e8050e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
