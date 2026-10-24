# carmichael

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0de510aeb4cbc64933c4398285e8879b8c68be84879649833eabdb955e0a0d28",
  "kind": "def",
  "lexical_name": "carmichael",
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
  "slug": "carmichael--508e8752cfd0b42e0b69c34a",
  "source": {
    "blob": "b059b6e2d660326c739b91ac3778711315d92938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:508e8752cfd0b42e0b69c34a4e03db57c14d83049e37799b3cef85664340d766",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0de510aeb4cbc64933c4398285e8879b8c68be84879649833eabdb955e0a0d28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def carmichael : ArithmeticFunction ℕ where
  toFun
    | 0 => 0
    | n + 1 => Nat.find <| ExponentExists.of_finite (G := (ZMod (n + 1))ˣ)
  map_zero' := rfl

@[deprecated (since := "2026-05-06")] alias Carmichael := carmichael

@[inherit_doc]
scoped[ArithmeticFunction.carmichael] notation "λ" => ArithmeticFunction.carmichael

open scoped carmichael

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variant5b7eecd42bf8256d887b6815060d4a40c851317ffdd7b0692894930f460fe6f2.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b059b6e2d660326c739b91ac3778711315d92938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
