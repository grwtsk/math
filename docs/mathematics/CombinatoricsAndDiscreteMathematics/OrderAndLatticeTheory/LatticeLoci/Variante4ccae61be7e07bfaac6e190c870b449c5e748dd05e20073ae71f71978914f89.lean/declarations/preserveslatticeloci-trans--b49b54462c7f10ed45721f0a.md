# preservesLatticeLoci_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9417e4018778afd36b130a8137f6855ddd3bc458e8966a2e9120e59f6e9a3db",
  "kind": "def",
  "lexical_name": "preservesLatticeLoci_trans",
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
  "slug": "preserveslatticeloci-trans--b49b54462c7f10ed45721f0a",
  "source": {
    "blob": "de08042e86eee400b63ef5988016f52967302ed1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b49b54462c7f10ed45721f0abdf93911ff91b36591ad35505087ec0ce0fc2a4f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9417e4018778afd36b130a8137f6855ddd3bc458e8966a2e9120e59f6e9a3db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesLatticeLoci_trans {α : Type}
    {left middle right : CompressedString α}
    (hleft : PreservesLatticeLoci left middle)
    (hright : PreservesLatticeLoci middle right) :
    PreservesLatticeLoci left right :=
  { lookupEquiv :=
      preservesOfDecodeEq
        (hleft.lookupEquiv.decode_eq.trans hright.lookupEquiv.decode_eq)
    preservesLookup :=
      preserves_semantics_and_lookup_trans
        hleft.preservesLookup
        hright.preservesLookup
    sliceForward := fun slice => hright.sliceForward (hleft.sliceForward slice)
    sliceBackward := fun slice => hleft.sliceBackward (hright.sliceBackward slice)
    forwardBackward := by
      intro slice
      rw [hright.forwardBackward, hleft.forwardBackward]
    backwardForward := by
      intro slice
      rw [hleft.backwardForward, hright.backwardForward]
    containsForward := by
      intro slice i hcontains
      have hmiddle := hleft.containsForward slice i hcontains
      have hrightContains :=
        hright.containsForward
          (hleft.sliceForward slice)
          (transportIndex hleft.lookupEquiv.decode_eq i)
          hmiddle
      change
        (hright.sliceForward (hleft.sliceForward slice)).containsNat
          i.val at hrightContains
      change
        (hright.sliceForward (hleft.sliceForward slice)).containsNat
          i.val
      exact hrightContains
    containsBackward := by
      intro slice i hcontains
      have hrightContains :
          Slice.containsFin
            (hright.sliceBackward slice)
            (transportIndex hleft.lookupEquiv.decode_eq i) := by
        have hraw :=
          hright.containsBackward
            slice
            (transportIndex hleft.lookupEquiv.decode_eq i)
            (by
              change slice.containsNat i.val
              exact hcontains)
        exact hraw
      exact hleft.containsBackward
        (hright.sliceBackward slice)
        i
        hrightContains }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de08042e86eee400b63ef5988016f52967302ed1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
