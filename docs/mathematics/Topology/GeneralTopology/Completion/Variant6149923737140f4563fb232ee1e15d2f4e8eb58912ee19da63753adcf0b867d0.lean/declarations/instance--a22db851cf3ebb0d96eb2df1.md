# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6774020651097cce6763d6148f60b4ab4b4212668a396215805e78c598b13ad7",
  "kind": "instance",
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
  "slug": "instance--a22db851cf3ebb0d96eb2df1",
  "source": {
    "blob": "6662bab85be51d1e7b3c4be39ca3971571f4fc98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a22db851cf3ebb0d96eb2df1399d951c73a338f52484cb357f9b78ea1ee72fbe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6774020651097cce6763d6148f60b4ab4b4212668a396215805e78c598b13ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : InnerProductSpace 𝕜 (SeparationQuotient E) where
  norm_sq_eq_re_inner := Quotient.ind norm_sq_eq_re_inner
  conj_inner_symm := Quotient.ind₂ inner_conj_symm
  add_left := Quotient.ind fun x => Quotient.ind₂ <| inner_add_left x
  smul_left := Quotient.ind₂ inner_smul_left

end SeparationQuotient

end SeparationQuotient

section UniformSpace.Completion

variable [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]

namespace UniformSpace.Completion

open RCLike Function

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6662bab85be51d1e7b3c4be39ca3971571f4fc98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
