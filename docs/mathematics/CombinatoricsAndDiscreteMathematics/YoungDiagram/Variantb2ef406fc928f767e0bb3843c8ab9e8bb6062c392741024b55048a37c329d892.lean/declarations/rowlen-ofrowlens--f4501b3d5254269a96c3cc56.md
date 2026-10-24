# rowLen_ofRowLens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57bbfd36-4551-7895-1d9b-11b56f793f3e",
  "kind": "theorem",
  "lexical_name": "rowLen_ofRowLens",
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
  "slug": "rowlen-ofrowlens--f4501b3d5254269a96c3cc56",
  "source": {
    "blob": "46cae38211cf9a9f0d902e3f866a935055b7165f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 515,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variantb2ef406fc928f767e0bb3843c8ab9e8bb6062c392741024b55048a37c329d892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4501b3d5254269a96c3cc56df571655ee849d16f3761e53933dc3f6e23e281b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variantb2ef406fc928f767e0bb3843c8ab9e8bb6062c392741024b55048a37c329d892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57bbfd36-4551-7895-1d9b-11b56f793f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rowLen_ofRowLens {w : List ℕ} {hw : w.Sorted (· ≥ ·)} (i : Fin w.length) :
    (ofRowLens w hw).rowLen i = w.get i := by
  simp [rowLen, Nat.find_eq_iff, mem_ofRowLens]
#align young_diagram.row_len_of_row_lens YoungDiagram.rowLen_ofRowLens

/-- The left_inv direction of the equivalence -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variantb2ef406fc928f767e0bb3843c8ab9e8bb6062c392741024b55048a37c329d892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variantb2ef406fc928f767e0bb3843c8ab9e8bb6062c392741024b55048a37c329d892.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46cae38211cf9a9f0d902e3f866a935055b7165f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
