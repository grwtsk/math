# reducedOrdinalSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17294efeea7c4d38d3952d1e715e96bff2e44c0882951fc3ec0f9c67e1f868a6",
  "kind": "def",
  "lexical_name": "reducedOrdinalSetoid",
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
  "slug": "reducedordinalsetoid--0e13e2e8eb886376fb27f89d",
  "source": {
    "blob": "be17842a5111e1e9682fe943a3230d092ef2e93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e13e2e8eb886376fb27f89d0d331a4714590f3978712c6746bec1d0ac99c369",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17294efeea7c4d38d3952d1e715e96bff2e44c0882951fc3ec0f9c67e1f868a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reducedOrdinalSetoid {I : Type u} (F : Filter I) : Setoid (I → Ordinal.{v}) where
  r f g := f =ᶠ[F] g
  iseqv := ⟨fun f ↦ Filter.EventuallyEq.refl F f,
    Filter.EventuallyEq.symm, Filter.EventuallyEq.trans⟩

/-- Ordinal-valued functions modulo eventual equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant2716f42c4e370fa428b6e0e770ffe18de0ea141a96fd111f355642a039c66f00.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be17842a5111e1e9682fe943a3230d092ef2e93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
