# Function.Surjective.mulActionWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b7004809c824aee555bc7c0c3df49edb191ef7dc319fc85ac172362fe83eefb",
  "kind": "def",
  "lexical_name": "Function.Surjective.mulActionWithZero",
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
  "slug": "function-surjective-mulactionwithzero--b2fa0721ea798b92f6a08c85",
  "source": {
    "blob": "e02df180a9118837e67f31eae886909c6a88ecba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 191,
    "path": "GRWTSK/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2fa0721ea798b92f6a08c85aa5245d5cd8ab27d64c3ab977e2f1b3d0735fbbb",
  "verification": {
    "reference": "docs/verification/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b7004809c824aee555bc7c0c3df49edb191ef7dc319fc85ac172362fe83eefb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Function.Surjective.mulActionWithZero (f : ZeroHom M M') (hf : Function.Surjective f)
    (smul : ∀ (a : R) (b), f (a • b) = a • f b) : MulActionWithZero R M' :=
  { hf.mulAction f smul, hf.smulWithZero f smul with }
#align function.surjective.mul_action_with_zero Function.Surjective.mulActionWithZero

variable (M)

/-- Compose a `MulActionWithZero` with a `MonoidWithZeroHom`, with action `f r' • m` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e02df180a9118837e67f31eae886909c6a88ecba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
