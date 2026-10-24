# toNonAssocSemiring_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db23e935-ecdb-2618-b163-d538d5e46e3b",
  "kind": "theorem",
  "lexical_name": "toNonAssocSemiring_injective",
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
  "slug": "tononassocsemiring-injective--f0f9e64fe0af15edc145bb60",
  "source": {
    "blob": "85b28196c106b775d90194f478d7263bacad7095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 310,
    "path": "GRWTSK/Algebra/Ext/Variant9ffc736f8c20e886f5a37bf33ee93bbe1541caf04bf4dce43cebc9ee65e3cd93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0f9e64fe0af15edc145bb6070e1a156ddcdd63c881ea4e3f795807ed893857a",
  "verification": {
    "reference": "docs/verification/Algebra/Ext/Variant9ffc736f8c20e886f5a37bf33ee93bbe1541caf04bf4dce43cebc9ee65e3cd93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db23e935-ecdb-2618-b163-d538d5e46e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNonAssocSemiring_injective :
    Function.Injective (@toNonAssocSemiring R) := by
  intro _ _ h
  ext x y
  · exact congrArg (·.toAdd.add x y) h
  · exact congrArg (·.toMul.mul x y) h

end Semiring

/-! ### Ring -/
namespace Ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ext/Variant9ffc736f8c20e886f5a37bf33ee93bbe1541caf04bf4dce43cebc9ee65e3cd93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ext/Variant9ffc736f8c20e886f5a37bf33ee93bbe1541caf04bf4dce43cebc9ee65e3cd93.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85b28196c106b775d90194f478d7263bacad7095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
