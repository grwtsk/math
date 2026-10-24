# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:812caa1b31b4cba6c26e4acabaf7116e1bb8114f9ffaa9c284c013c3a544cad1",
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
  "slug": "instance--86549e58be5fe409d36ec50d",
  "source": {
    "blob": "190bfa1916db331b2f6967cf747c236cce133149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 68,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variant037eb494ec3ac045215ad24559121016f217beead714854335800bad7d669ee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86549e58be5fe409d36ec50df45d059747986ea29589875066782077581262ef",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variant037eb494ec3ac045215ad24559121016f217beead714854335800bad7d669ee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:812caa1b31b4cba6c26e4acabaf7116e1bb8114f9ffaa9c284c013c3a544cad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) DivisionRing.isPrincipalIdealRing (K : Type u) [DivisionRing K] :
    IsPrincipalIdealRing K where
  principal S := by
    rcases Ideal.eq_bot_or_top S with (rfl | rfl)
    · apply bot_isPrincipal
    · apply top_isPrincipal

end

namespace Submodule.IsPrincipal

variable [AddCommMonoid M]

section Semiring

variable [Semiring R] [Module R M]

/-- `generator I`, if `I` is a principal submodule, is an `x ∈ M` such that `span R {x} = I` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variant037eb494ec3ac045215ad24559121016f217beead714854335800bad7d669ee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variant037eb494ec3ac045215ad24559121016f217beead714854335800bad7d669ee5.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `190bfa1916db331b2f6967cf747c236cce133149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
