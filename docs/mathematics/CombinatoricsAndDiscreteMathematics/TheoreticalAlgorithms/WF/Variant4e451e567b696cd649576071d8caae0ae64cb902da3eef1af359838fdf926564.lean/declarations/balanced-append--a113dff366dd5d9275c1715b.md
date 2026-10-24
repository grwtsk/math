# Balanced.append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec902d4e-3205-12e4-8973-e5f8392a7bd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac765c2d-3d89-5465-6fbb-25cf5a56c117",
  "kind": "theorem",
  "lexical_name": "Balanced.append",
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
  "slug": "balanced-append--a113dff366dd5d9275c1715b",
  "source": {
    "blob": "46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 347,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a113dff366dd5d9275c1715bd9228886a9e72e2b5942fc9cff369f1842290a3b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac765c2d-3d89-5465-6fbb-25cf5a56c117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Balanced.append {l r : RBNode α}
    (hl : l.Balanced c₁ n) (hr : r.Balanced c₂ n) :
    (l.append r).RedRed (c₁ = black → c₂ ≠ black) n := by
  unfold append; split
  · exact .balanced hr
  · exact .balanced hl
  · next b c _ _ =>
    have .red ha hb := hl; have .red hc hd := hr
    have ⟨_, IH⟩ := (hb.append hc).of_false (· rfl rfl); split
    · next e =>
      have .red hb' hc' := e ▸ IH
      exact .redred (fun.) (.red ha hb') (.red hc' hd)
    · next bcc _ H =>
      match bcc, append b c, IH, H with
      | black, _, IH, _ => exact .redred (fun.) ha (.red IH hd)
      | red, _, .red .., H => cases H _ _ _ rfl
  · next b c _ _ =>
    have .black ha hb := hl; have .black hc hd := hr
    have IH := hb.append hc; split
    · next e => match e ▸ IH with
      | .balanced (.red hb' hc') | .redred _ hb' hc' =>
        exact .balanced (.red (.black ha hb') (.black hc' hd))
    · next H =>
      match append b c, IH, H with
      | bc, .balanced hbc, _ =>
        unfold balLeft; split
        · have .red ha' hb' := ha
          exact .balanced (.red (.black ha' hb') (.black hbc hd))
        · exact have ⟨c, h⟩ := RedRed.balance2 ha (.redred trivial hbc hd); .balanced h
      | _, .redred .., H => cases H _ _ _ rfl
  · have .red hc hd := hr; have IH := hl.append hc
    have .black ha hb := hl; have ⟨c, IH⟩ := IH.of_false (· rfl rfl)
    exact .redred (fun.) IH hd
  · have .red ha hb := hl; have IH := hb.append hr
    have .black hc hd := hr; have ⟨c, IH⟩ := IH.of_false (· rfl rfl)
    exact .redred (fun.) ha IH
termination_by _ => l.size + r.size

/-! ## erase -/

/--
The invariant of the `del` function.
* If the input tree is black, then the result of deletion is a red-red tree with
  black-height lowered by 1.
* If the input tree is red or nil, then the result of deletion is a balanced tree with
  some color and the same black-height.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant4e451e567b696cd649576071d8caae0ae64cb902da3eef1af359838fdf926564.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ed5eda88fdb5dc6a181165ae3c2be9d4a7ab7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
