# Code.eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8058a3ffb52aadce4c5cc6c975096d784a7d50634ea2e5d7458ed4114d61616",
  "kind": "def",
  "lexical_name": "Code.eval",
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
  "slug": "code-eval--8debdfdd05f49b9be23ee713",
  "source": {
    "blob": "9a34e853b8a496717e8e8d6d9d733a758c24f04e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8debdfdd05f49b9be23ee71332f61f5a80840a912d37983aea24a3f5a41889e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8058a3ffb52aadce4c5cc6c975096d784a7d50634ea2e5d7458ed4114d61616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Code.eval : Code → List ℕ →. List ℕ
  | Code.zero' => fun v => pure (0 :: v)
  | Code.succ => fun v => pure [v.headI.succ]
  | Code.tail => fun v => pure v.tail
  | Code.cons f fs => fun v => do
    let n ← Code.eval f v
    let ns ← Code.eval fs v
    pure (n.headI :: ns)
  | Code.comp f g => fun v => g.eval v >>= f.eval
  | Code.case f g => fun v => v.headI.rec (f.eval v.tail) fun y _ => g.eval (y::v.tail)
  | Code.fix f =>
    PFun.fix fun v => (f.eval v).map fun v => if v.headI = 0 then Sum.inl v.tail else Sum.inr v.tail

namespace Code

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variant881563bdbee3e78395c5c90d8cc1e9e268593df7149412c811cd9adc4b2b376d.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a34e853b8a496717e8e8d6d9d733a758c24f04e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
