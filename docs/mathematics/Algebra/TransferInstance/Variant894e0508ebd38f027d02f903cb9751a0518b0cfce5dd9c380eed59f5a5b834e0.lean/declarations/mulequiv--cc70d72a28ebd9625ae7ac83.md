# mulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d335fd3c2ef8a57e7351b35798c799800c58e35a97734ef167c05c19d67ee6a",
  "kind": "def",
  "lexical_name": "mulEquiv",
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
  "slug": "mulequiv--cc70d72a28ebd9625ae7ac83",
  "source": {
    "blob": "7f1ea70614d8266216a7e85e83750321db238fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 135,
    "path": "GRWTSK/Algebra/TransferInstance/Variant894e0508ebd38f027d02f903cb9751a0518b0cfce5dd9c380eed59f5a5b834e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc70d72a28ebd9625ae7ac83611c272231674cac5a313891fab82730775c904c",
  "verification": {
    "reference": "docs/verification/Algebra/TransferInstance/Variant894e0508ebd38f027d02f903cb9751a0518b0cfce5dd9c380eed59f5a5b834e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d335fd3c2ef8a57e7351b35798c799800c58e35a97734ef167c05c19d67ee6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulEquiv (e : α ≃ β) [Mul β] :
    let _ := Equiv.mul e
    α ≃* β := by
  intros
  exact
    { e with
      map_mul' := fun x y => by
        apply e.symm.injective
        simp [mul_def] }

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TransferInstance/Variant894e0508ebd38f027d02f903cb9751a0518b0cfce5dd9c380eed59f5a5b834e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TransferInstance/Variant894e0508ebd38f027d02f903cb9751a0518b0cfce5dd9c380eed59f5a5b834e0.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1ea70614d8266216a7e85e83750321db238fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
