# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PreimageEmpty.Variant58ee805279ace383bdb039607a2d9620f20cf338903f89a0523505af5c1bab7d.Disjoint.of_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bc87b42-db23-65a0-7384-09d03a21aecb",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PreimageEmpty.Variant58ee805279ace383bdb039607a2d9620f20cf338903f89a0523505af5c1bab7d.Disjoint.of_preimage",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-preimageempt--d4e3e2eebcedce0725c82012",
  "source": {
    "blob": "30af0b82b2fed14cb95764375d0b943cd8ff4725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1383,
    "line": 1378,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant18c986ebc5a3a711df4f93a4ad7b749f285849e83c048544db3c0d01dafbaa47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e3e2eebcedce0725c82012f92b3f9afa3be012a4497dc6200c48bb56fb9716",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant18c986ebc5a3a711df4f93a4ad7b749f285849e83c048544db3c0d01dafbaa47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bc87b42-db23-65a0-7384-09d03a21aecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1378–1383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PreimageEmpty.Variant58ee805279ace383bdb039607a2d9620f20cf338903f89a0523505af5c1bab7d.Disjoint.of_preimage (hf : Surjective f) {s t : Set β}
    (h : Disjoint (f ⁻¹' s) (f ⁻¹' t)) : Disjoint s t := by
  rw [disjoint_iff_inter_eq_empty, ← image_preimage_eq (_ ∩ _) hf, preimage_inter, h.inter_eq,
    image_empty]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant18c986ebc5a3a711df4f93a4ad7b749f285849e83c048544db3c0d01dafbaa47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variant18c986ebc5a3a711df4f93a4ad7b749f285849e83c048544db3c0d01dafbaa47.lean#L1378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30af0b82b2fed14cb95764375d0b943cd8ff4725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
