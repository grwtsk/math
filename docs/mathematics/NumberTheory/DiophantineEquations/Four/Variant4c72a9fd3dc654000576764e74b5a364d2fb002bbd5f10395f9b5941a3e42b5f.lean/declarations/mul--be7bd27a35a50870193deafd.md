# mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ebb2c42-6315-5383-729a-a2f1cedb41e2",
  "kind": "theorem",
  "lexical_name": "mul",
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
  "slug": "mul--be7bd27a35a50870193deafd",
  "source": {
    "blob": "4cc612b90563ce65864f7a5a0595a316f26dd869",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be7bd27a35a50870193deafdbefba10328166d51158e18a3b4687670507f3e10",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ebb2c42-6315-5383-729a-a2f1cedb41e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul {a b c k : ℤ} (hk0 : k ≠ 0) :
    Fermat42 a b c ↔ Fermat42 (k * a) (k * b) (k ^ 2 * c) := by
  delta Fermat42
  constructor
  · intro f42
    constructor
    · exact mul_ne_zero hk0 f42.1
    constructor
    · exact mul_ne_zero hk0 f42.2.1
    · have H : a ^ 4 + b ^ 4 = c ^ 2 := f42.2.2
      linear_combination k ^ 4 * H
  · intro f42
    constructor
    · exact right_ne_zero_of_mul f42.1
    constructor
    · exact right_ne_zero_of_mul f42.2.1
    apply (mul_right_inj' (pow_ne_zero 4 hk0)).mp
    linear_combination f42.2.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Four/Variant4c72a9fd3dc654000576764e74b5a364d2fb002bbd5f10395f9b5941a3e42b5f.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cc612b90563ce65864f7a5a0595a316f26dd869` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
