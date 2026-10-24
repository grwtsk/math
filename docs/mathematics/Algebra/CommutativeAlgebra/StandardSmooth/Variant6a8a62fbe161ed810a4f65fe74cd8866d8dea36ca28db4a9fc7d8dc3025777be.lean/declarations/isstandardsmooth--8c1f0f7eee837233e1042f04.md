# IsStandardSmooth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a98b5d038e62119591d765171760a5fefcbda1573015ac840393514f015aee69",
  "kind": "class",
  "lexical_name": "IsStandardSmooth",
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
  "slug": "isstandardsmooth--8c1f0f7eee837233e1042f04",
  "source": {
    "blob": "5634a50ef6b2782e793ee91cffc13932494112a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 73,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c1f0f7eee837233e1042f041a119c4023178ab4055dc8b7a77fd113eb341d6a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a98b5d038e62119591d765171760a5fefcbda1573015ac840393514f015aee69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsStandardSmooth : Prop where
  out : ∃ (ι σ : Type) (_ : Finite σ), Finite ι ∧ Nonempty (SubmersivePresentation R S ι σ)

variable [Finite σ]

variable {R S ι σ} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardSmooth/Variant6a8a62fbe161ed810a4f65fe74cd8866d8dea36ca28db4a9fc7d8dc3025777be.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5634a50ef6b2782e793ee91cffc13932494112a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
