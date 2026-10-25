# of_prim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e716772-1953-a793-51de-a440b60b52c3",
  "kind": "theorem",
  "lexical_name": "of_prim",
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
  "slug": "of-prim--aa7e5eaf530ee8e15d9a92de",
  "source": {
    "blob": "aa29e01f0d1a686ffad25e687375d46bcadcfeb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1416,
    "line": 1397,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant0abfdccdc49d8d69ba6fd7792ebd5da17fa7a11fad7a19067ab990ed786c96d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa7e5eaf530ee8e15d9a92de84bfae102da197d092c9a72e750fbc9ed7e07194",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant0abfdccdc49d8d69ba6fd7792ebd5da17fa7a11fad7a19067ab990ed786c96d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e716772-1953-a793-51de-a440b60b52c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1397–1416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_prim {n f} : Primrec f → @Primrec' n f :=
  suffices ∀ f, Nat.Primrec f → @Primrec' 1 fun v => f v.head from fun hf =>
    (pred.comp₁ _ <|
          (this _ hf).comp₁ (fun m => Encodable.encode <| (@decode (List.Vector ℕ n) _ m).map f)
            Primrec'.encode).of_eq
      fun i => by simp [encodek]
  fun f hf => by
  induction hf with
  | zero => exact const 0
  | succ => exact succ
  | left => exact unpair₁ head
  | right => exact unpair₂ head
  | pair _ _ hf hg => exact natPair.comp₂ _ hf hg
  | comp _ _ hf hg => exact hf.comp₁ _ hg
  | prec _ _ hf hg =>
    simpa using
      prec' (unpair₂ head) (hf.comp₁ _ (unpair₁ head))
        (hg.comp₁ _ <|
          natPair.comp₂ _ (unpair₁ <| tail <| tail head) (natPair.comp₂ _ head (tail head)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant0abfdccdc49d8d69ba6fd7792ebd5da17fa7a11fad7a19067ab990ed786c96d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant0abfdccdc49d8d69ba6fd7792ebd5da17fa7a11fad7a19067ab990ed786c96d7.lean#L1397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa29e01f0d1a686ffad25e687375d46bcadcfeb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
