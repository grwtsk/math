# decNonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d817587dec475408818d2c8d74640e70cf9042305ffbe47f919731b21e1f1838",
  "kind": "def",
  "lexical_name": "decNonneg",
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
  "slug": "decnonneg--12282df28d03a24a45cd762c",
  "source": {
    "blob": "13eb3c86d79160bb9bda2edd33772d6d4439ce0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant468d1f036ff16558063349347c175fa9a4f0433ba5b9e85a9c562ebcfd3ab202.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12282df28d03a24a45cd762c086c84363ff3e72d96db9742db585ae15ef31012",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant468d1f036ff16558063349347c175fa9a4f0433ba5b9e85a9c562ebcfd3ab202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d817587dec475408818d2c8d74640e70cf9042305ffbe47f919731b21e1f1838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def decNonneg (m : @& Int) : Decidable (NonNeg m) :=
  match m with
  | ofNat m => isTrue <| NonNeg.mk m
  | -[i +1] => isFalse <| fun h =>
    have : ∀ j, (j = -[i +1]) → NonNeg j → False := fun _ hj hnn =>
      Int.NonNeg.casesOn (motive := fun j _ => j = -[i +1] → False) hnn
        (fun _ h => Int.noConfusion h) hj
    this -[i +1] rfl h

/-- Decides whether `a ≤ b`.

  ```
  #eval ¬ ( (7 : Int) ≤ (0 : Int) ) -- true
  #eval (0 : Int) ≤ (0 : Int) -- true
  #eval (7 : Int) ≤ (10 : Int) -- true
  ```

  Implemented by efficient native code. -/
@[extern "lean_int_dec_le"]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant468d1f036ff16558063349347c175fa9a4f0433ba5b9e85a9c562ebcfd3ab202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant468d1f036ff16558063349347c175fa9a4f0433ba5b9e85a9c562ebcfd3ab202.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13eb3c86d79160bb9bda2edd33772d6d4439ce0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
