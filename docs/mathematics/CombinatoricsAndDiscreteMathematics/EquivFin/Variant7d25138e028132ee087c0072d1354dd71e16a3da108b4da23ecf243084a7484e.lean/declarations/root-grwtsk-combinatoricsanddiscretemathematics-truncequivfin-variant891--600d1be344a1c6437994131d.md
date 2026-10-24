# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TruncEquivFin.Variant891fdb687fc067b1511701992301e28de0d4fd6ab53d74a96f51be39d5aa8f92.Function.RightInverse.leftInverse_of_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a3dae5f-9514-e77d-2eaa-eb31838d7246",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TruncEquivFin.Variant891fdb687fc067b1511701992301e28de0d4fd6ab53d74a96f51be39d5aa8f92.Function.RightInverse.leftInverse_of_card_le",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-truncequivfin-variant891--600d1be344a1c6437994131d",
  "source": {
    "blob": "190f63662576d48d50f052c96722f3a263906b26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 295,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EquivFin/Variant7d25138e028132ee087c0072d1354dd71e16a3da108b4da23ecf243084a7484e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:600d1be344a1c6437994131d8d9b14a6f82de134fa353712afe7f0472902e09d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EquivFin/Variant7d25138e028132ee087c0072d1354dd71e16a3da108b4da23ecf243084a7484e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a3dae5f-9514-e77d-2eaa-eb31838d7246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TruncEquivFin.Variant891fdb687fc067b1511701992301e28de0d4fd6ab53d74a96f51be39d5aa8f92.Function.RightInverse.leftInverse_of_card_le {f : α → β} {g : β → α}
    (hfg : RightInverse f g) (hcard : card β ≤ card α) : LeftInverse f g :=
  Function.LeftInverse.rightInverse_of_card_le hfg hcard

end Fintype

namespace Equiv

variable [Fintype α] [Fintype β]

open Fintype

/-- Construct an equivalence from functions that are inverse to each other. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EquivFin/Variant7d25138e028132ee087c0072d1354dd71e16a3da108b4da23ecf243084a7484e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EquivFin/Variant7d25138e028132ee087c0072d1354dd71e16a3da108b4da23ecf243084a7484e.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `190f63662576d48d50f052c96722f3a263906b26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
