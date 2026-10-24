# piLTLim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:734ebd7f97cbeaaef6e029744c1c3f5a3751a6cec24d8f599c810d63403392da",
  "kind": "def",
  "lexical_name": "piLTLim",
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
  "slug": "piltlim--c6e43f36eb0a97488fee0f3e",
  "source": {
    "blob": "9efaa124b4e64f79d7514744b0544f1a26ef3ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6e43f36eb0a97488fee0f3e6106a2666e37e218d06656f2c465a962395bd3fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:734ebd7f97cbeaaef6e029744c1c3f5a3751a6cec24d8f599c810d63403392da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps apply] noncomputable def piLTLim : piLT X i ≃ limit (piLTProj (X := X)) i where
  toFun f := ⟨fun j ↦ piLTProj j.2.le f, fun _ _ _ ↦ rfl⟩
  invFun f l := let k := hi.mid l.2; f.1 ⟨k, k.2.2⟩ ⟨l, k.2.1⟩
  right_inv f := by
    ext j l
    set k := hi.mid (l.2.trans j.2)
    obtain le | le := le_total j ⟨k, k.2.2⟩
    exacts [congr_fun (f.2 le) l, (congr_fun (f.2 le) ⟨l, _⟩).symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variantdfa51418e1841cbd7e9bdf3db469f9f6c5a06c966b376c193f55f98b6c5340d9.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9efaa124b4e64f79d7514744b0544f1a26ef3ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
