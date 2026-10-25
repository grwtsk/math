# strictMono_equivOfEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98920ffb-a379-0078-e896-83e936ab18c7",
  "kind": "lemma",
  "lexical_name": "strictMono_equivOfEq",
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
  "slug": "strictmono-equivofeq--d25e9a21ef2994ac67a7fe2a",
  "source": {
    "blob": "e38f9c799817239ac2260ce64982195b4b476715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d25e9a21ef2994ac67a7fe2aed20d137dbe7189885c077efdfabc068cc4a4a35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98920ffb-a379-0078-e896-83e936ab18c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictMono_equivOfEq [Preorder α] (h : s = t) : StrictMono (equivOfEq h) := fun _ _ ↦ id

@[deprecated (since := "2026-08-29")] alias _root_.Equiv.Set.congr := equivOfEq
@[deprecated (since := "2026-08-29")] alias _root_.Equiv.Set.congr_apply := equivOfEq_apply
@[deprecated (since := "2026-08-29")]
alias _root_.Equiv.Set.congr_symm_apply := equivOfEq_symm_apply
@[deprecated (since := "2026-08-29")] alias _root_.Equiv.strictMono_setCongr := strictMono_equivOfEq

end Set

namespace Equiv
variable {α β : Type*}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38f9c799817239ac2260ce64982195b4b476715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
