# IsMultiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1949fe3f3d76496922c0c76409bcc9fbd9b0347baf8a9eba8fedbb5cef0d07f",
  "kind": "def",
  "lexical_name": "IsMultiplicative",
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
  "slug": "ismultiplicative--a7bcdd762766bf0939ddc94b",
  "source": {
    "blob": "a987b3e6ee135c6871209d7550f91231c7e5cbe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 15,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7bcdd762766bf0939ddc94b8656df87282be472d7a1beb00caaf61d7f0f4435",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1949fe3f3d76496922c0c76409bcc9fbd9b0347baf8a9eba8fedbb5cef0d07f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsMultiplicative
    [Mul R] [One R]
    (f : ArithFn R) : Prop :=
  f 1 = 1 ∧
    ∀ a b : Nat, Nat.Coprime a b → f (a * b) = f a * f b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/MultiplicativeFunction/Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a987b3e6ee135c6871209d7550f91231c7e5cbe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
