# top_isPrincipal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2304dd30349ee63f6efc4ef18d614872ddd8446facb22a71e72948eb6a4ab027",
  "kind": "instance",
  "lexical_name": "top_isPrincipal",
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
  "slug": "top-isprincipal--033b50cab6fd472a4e74a3e1",
  "source": {
    "blob": "d6de315c92879d8c2503b6bc99e92b1e564a7b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:033b50cab6fd472a4e74a3e1df6f9a3d0cd85598908f51507071aa0c182ed901",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2304dd30349ee63f6efc4ef18d614872ddd8446facb22a71e72948eb6a4ab027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance top_isPrincipal : (⊤ : Submodule R R).IsPrincipal :=
  ⟨⟨1, Ideal.span_singleton_one.symm⟩⟩

variable (R)

/-- A Bézout ring is a ring whose finitely generated ideals are principal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6de315c92879d8c2503b6bc99e92b1e564a7b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
