# catalogSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00d5a5632300a63451b4fbde864bf90e6c42e48da9ade7fc5bfff59ae27fe706",
  "kind": "def",
  "lexical_name": "catalogSetoid",
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
  "slug": "catalogsetoid--b5b89fcf3a4cdd2a600c79a6",
  "source": {
    "blob": "e2a755b73bdc67b0b50e4a1f29e6b7f560756cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5b89fcf3a4cdd2a600c79a66c458c5c08530a75c8532324b3a45a1859872d21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00d5a5632300a63451b4fbde864bf90e6c42e48da9ade7fc5bfff59ae27fe706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def catalogSetoid (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full)
    (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar) :
    Setoid (Fin full.value.catalog.length) :=
  { r := fun left right => (left.val, right.val) ∈ relationPairs congruence.candidate
    iseqv := by
      obtain ⟨_, _, _, refl, symm, trans, _⟩ := congruence.valid.1
      refine ⟨?_, ?_, ?_⟩
      · intro index
        exact refl index.val (List.mem_range.mpr index.isLt)
      · intro left right related
        exact symm (left.val, right.val) related
      · intro left middle right first second
        exact trans (left.val, middle.val) first (middle.val, right.val) second rfl }

/-- A quotient consumer requires the exact checked descent operand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2a755b73bdc67b0b50e4a1f29e6b7f560756cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
