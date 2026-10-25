# addBottom_modifyNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ae42a44-e8e9-f415-ffba-2742cae65e75",
  "kind": "theorem",
  "lexical_name": "addBottom_modifyNth",
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
  "slug": "addbottom-modifynth--54a1bf0b33653f76c486512e",
  "source": {
    "blob": "f4ba02815758cfb9698061c15a805920126e3787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54a1bf0b33653f76c486512e1d611be5a0c3bab814f6cc0970a6ff54fdf76714",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ae42a44-e8e9-f415-ffba-2742cae65e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addBottom_modifyNth (f : (∀ k, Option (Γ k)) → ∀ k, Option (Γ k))
    (L : ListBlank (∀ k, Option (Γ k))) (n : ℕ) :
    (addBottom L).modifyNth (fun a ↦ (a.1, f a.2)) n = addBottom (L.modifyNth f n) := by
  cases n <;>
    simp only [addBottom, ListBlank.head_cons, ListBlank.modifyNth, ListBlank.tail_cons]
  congr; symm; apply ListBlank.map_modifyNth; intro; rfl

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ba02815758cfb9698061c15a805920126e3787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
