# checkerboard_isProper2Coloring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90723bbd-2b53-6657-fd27-cff00cf90269",
  "kind": "theorem",
  "lexical_name": "checkerboard_isProper2Coloring",
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
  "slug": "checkerboard-isproper2coloring--8b6d972e83d2a6a602c20986",
  "source": {
    "blob": "9bee0198187a24c8157fa56e4d1bd76e73d1a837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b6d972e83d2a6a602c20986cba758d1a79e338a83d4d909c6f47a5ae70eeae3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90723bbd-2b53-6657-fd27-cff00cf90269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkerboard_isProper2Coloring
    (m n : Nat) :
    IsProper2Coloring (checkerboard m n) := by
  intro a b hab
  rcases hab with ⟨hrow, hcol⟩ | ⟨hcol, hrow⟩
  · have hrval : a.1.val = b.1.val := congrArg Fin.val hrow
    rcases hcol with h | h
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.1.val + b.2.val : Nat) : Bit) =
            ((a.1.val + a.2.val : Nat) : Bit)) := by
        simpa [hrval] using heqBits.symm
      exact Carrier.Bit.flip_ne_self (((a.1.val + a.2.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.1.val) h]
        exact hflipEq)
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((a.1.val + b.2.val : Nat) : Bit)) := by
        simpa [hrval] using heqBits
      exact Carrier.Bit.flip_ne_self (((a.1.val + b.2.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.1.val) h]
        exact hflipEq)
  · have hcval : a.2.val = b.2.val := congrArg Fin.val hcol
    rcases hrow with h | h
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.2.val + b.1.val : Nat) : Bit) =
            ((a.2.val + a.1.val : Nat) : Bit)) := by
        simpa [hcval, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
          using heqBits.symm
      exact Carrier.Bit.flip_ne_self (((a.2.val + a.1.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.2.val) h]
        exact hflipEq)
    · intro heq
      have heqBits :
          (((a.1.val + a.2.val : Nat) : Bit) =
            ((b.1.val + b.2.val : Nat) : Bit)) := by
        change (((a.1.val + a.2.val : Nat) : Bit) =
          ((b.1.val + b.2.val : Nat) : Bit)) at heq
        exact heq
      have hflipEq :
          (((a.2.val + a.1.val : Nat) : Bit) =
            ((a.2.val + b.1.val : Nat) : Bit)) := by
        simpa [hcval, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
          using heqBits
      exact Carrier.Bit.flip_ne_self (((a.2.val + b.1.val : Nat) : Bit)) (by
        rw [← step_flip (r := a.2.val) h]
        exact hflipEq)

end Bitspace
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bee0198187a24c8157fa56e4d1bd76e73d1a837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
