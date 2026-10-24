# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846433bc61a47189d90d396524a5bcdd749c0b7bb62419fcfd527d5ec3e192a7",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--e5a0dce71cfea4accf8b9c9b",
  "source": {
    "blob": "663bcec6f10947e53423c4ba8882249d173cb0f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5a0dce71cfea4accf8b9c9b10da4e2f4a1c89abcabd1371861d6ef1f9d668c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846433bc61a47189d90d396524a5bcdd749c0b7bb62419fcfd527d5ec3e192a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (K L M : List α) (w : L.Disjoint M) (m : a ∈ L) : True := by
  have?! using w
  guard_hyp List.disjoint_symm : List.Disjoint M L := _root_.List.disjoint_symm w
  have : a ∉ M := by assumption
  trivial

/--
info: Try this: have : IsUnit p := isUnit_of_dvd_one h
---
info: Try this: have : p ≠ 1 := ne_one hp
---
info: Try this: have : p ∣ a := Prime.dvd_of_dvd_pow hp h
---
info: Try this: have : p ≠ 0 := ne_zero hp
---
info: Try this: have : ¬p ∣ 1 := not_dvd_one hp
---
info: Try this: have : ¬IsUnit p := not_unit hp
-/
#guard_msgs in
-- From Mathlib.Algebra.Associated:
variable {α : Type} [CommMonoidWithZero α] in
open Prime in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Propose/Variant9ad1898568e7000b92c0806ae35c540fa0a71670608a24572fee385c9bc59f14.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `663bcec6f10947e53423c4ba8882249d173cb0f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
