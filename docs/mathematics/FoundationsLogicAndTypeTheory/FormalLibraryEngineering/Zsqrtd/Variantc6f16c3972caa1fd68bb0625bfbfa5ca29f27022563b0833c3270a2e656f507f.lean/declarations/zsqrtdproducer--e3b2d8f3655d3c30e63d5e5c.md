# zsqrtdProducer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86c2893ff04751f7929d72fe98a7a64684ec16626544eccfaaaf61c60c0877ff",
  "kind": "def",
  "lexical_name": "zsqrtdProducer",
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
  "slug": "zsqrtdproducer--e3b2d8f3655d3c30e63d5e5c",
  "source": {
    "blob": "50bfda7cab8d1d1b58e9ff7b94b8bb64437c9d46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zsqrtd/Variantc6f16c3972caa1fd68bb0625bfbfa5ca29f27022563b0833c3270a2e656f507f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3b2d8f3655d3c30e63d5e5c252f61b38a8b5a930ce84cef6e0a8769dabc8fc5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zsqrtd/Variantc6f16c3972caa1fd68bb0625bfbfa5ca29f27022563b0833c3270a2e656f507f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86c2893ff04751f7929d72fe98a7a64684ec16626544eccfaaaf61c60c0877ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zsqrtdProducer (dQ : Q(ℤ)) (d : Int) : Producer :=
  let ops : RingOps (ℤ√d) := {
    zero := 0
    one := 1
    mul := (· * ·)
    sub := (· - ·)
    divExact := fun x y =>
      let z := x * star y
      let n := y.norm
      ⟨z.re / n, z.im / n⟩
    isZero := (· == 0) }
  let prepare (entries : Array (Array Expr)) :
      MetaM (Array (Array (ℤ√d)) × (BareissData (ℤ√d) → BareissData (ℤ√d))) := do
    let values ← entries.mapM (·.mapM (evalZsqrtdEntry d))
    return (values, id)
  let mkEntry : ℤ√d → MetaM Expr := fun v =>
    return q((⟨$(mkIntLitQ v.re), $(mkIntLitQ v.im)⟩ : Zsqrtd $dQ))
  mkProducer ops prepare mkEntry

/-- The `ℤ√d` model registration: handles `Zsqrtd d` for an integer literal `d`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zsqrtd/Variantc6f16c3972caa1fd68bb0625bfbfa5ca29f27022563b0833c3270a2e656f507f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zsqrtd/Variantc6f16c3972caa1fd68bb0625bfbfa5ca29f27022563b0833c3270a2e656f507f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50bfda7cab8d1d1b58e9ff7b94b8bb64437c9d46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
