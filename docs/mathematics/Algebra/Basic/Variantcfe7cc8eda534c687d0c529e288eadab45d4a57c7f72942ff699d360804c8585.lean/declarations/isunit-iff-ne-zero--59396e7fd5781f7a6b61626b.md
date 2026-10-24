# isUnit_iff_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d458c8c-3db0-2b5d-8d04-56b57a94c9b6",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_ne_zero",
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
  "slug": "isunit-iff-ne-zero--59396e7fd5781f7a6b61626b",
  "source": {
    "blob": "813129667a9e0ca0fa466dfa5676fa562b8a5db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 261,
    "path": "GRWTSK/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59396e7fd5781f7a6b61626bf98144544057cf1a9693c836f808845de5c44f1b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d458c8c-3db0-2b5d-8d04-56b57a94c9b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_ne_zero : IsUnit a ↔ a ≠ 0 :=
  Units.exists_iff_ne_zero
#align is_unit_iff_ne_zero isUnit_iff_ne_zero

alias ⟨_, Ne.isUnit⟩ := isUnit_iff_ne_zero
#align ne.is_unit Ne.isUnit

-- porting note: can't add this attribute?
-- https://github.com/leanprover-community/mathlib4/issues/740
-- attribute [protected] Ne.is_unit

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813129667a9e0ca0fa466dfa5676fa562b8a5db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
