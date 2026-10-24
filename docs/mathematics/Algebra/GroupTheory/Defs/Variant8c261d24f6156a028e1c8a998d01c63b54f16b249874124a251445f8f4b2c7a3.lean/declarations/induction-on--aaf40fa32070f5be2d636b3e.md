# induction_on₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:235dc6ec-942b-5cab-72e4-4f8f83f68ba3",
  "kind": "theorem",
  "lexical_name": "induction_on₂",
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
  "slug": "induction-on--aaf40fa32070f5be2d636b3e",
  "source": {
    "blob": "2e85153085a2a9a4befadf559b9a13ac81ad47ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 276,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant8c261d24f6156a028e1c8a998d01c63b54f16b249874124a251445f8f4b2c7a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaf40fa32070f5be2d636b3e82f376d6057b711c066a0e333e7814e447322962",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant8c261d24f6156a028e1c8a998d01c63b54f16b249874124a251445f8f4b2c7a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:235dc6ec-942b-5cab-72e4-4f8f83f68ba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem induction_on₂ {d : Con N} {C : c.Quotient → d.Quotient → Prop} (p : c.Quotient)
    (q : d.Quotient) (H : ∀ (x : M) (y : N), C x y) : C p q :=
  Quotient.inductionOn₂' p q H

variable (c)

/-- Two elements are related by a congruence relation `c` iff they are represented by the same
element of the quotient by `c`. -/
@[to_additive (attr := simp) /-- Two elements are related by an additive congruence relation `c` iff
they are represented by the same element of the quotient by `c`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant8c261d24f6156a028e1c8a998d01c63b54f16b249874124a251445f8f4b2c7a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant8c261d24f6156a028e1c8a998d01c63b54f16b249874124a251445f8f4b2c7a3.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e85153085a2a9a4befadf559b9a13ac81ad47ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
