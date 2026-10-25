# elabTFAEType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7755ee784b34562f4f3d64006a1bc8de04f7278a60eb86e2f507de49431fd3d7",
  "kind": "def",
  "lexical_name": "elabTFAEType",
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
  "slug": "elabtfaetype--ad02f0a489325ac7484bef9a",
  "source": {
    "blob": "9755fa2ce543d1c9ad31196d4687ee52043a181a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad02f0a489325ac7484bef9aa7f89e2fc2d22b269899fb1eb456a27e5b8040a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7755ee784b34562f4f3d64006a1bc8de04f7278a60eb86e2f507de49431fd3d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabTFAEType (tfaeList : List Q(Prop)) : TSyntax ``tfaeType → TermElabM Expr
  | stx@`(tfaeType|$i:num $arr:impArrow $j:num) => do
    let l := tfaeList.length
    let i' ← elabIndex i l
    let j' ← elabIndex j l
    let Pi := tfaeList[i'-1]!
    let Pj := tfaeList[j'-1]!
    /- TODO: this is a hack to show the types `Pi`, `Pj` on hover. See [Zulip](https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/topic/Pre-RFC.3A.20Forcing.20terms.20to.20be.20shown.20in.20hover.3F). -/
    Term.addTermInfo' i q(sorry : $Pi) Pi
    Term.addTermInfo' j q(sorry : $Pj) Pj
    let (ty : Q(Prop)) ← match arr with
      | `(impArrow| ← ) => pure q($Pj → $Pi)
      | `(impArrow| → ) => pure q($Pi → $Pj)
      | `(impArrow| ↔ ) => pure q($Pi ↔ $Pj)
      | _ => throwUnsupportedSyntax
    Term.addTermInfo' stx q(sorry : $ty) ty
    return ty
  | _ => throwUnsupportedSyntax

/- Convert `tfae_have i <arr> j ...` to `tfae_have tfae_i_arr_j : i <arr> j ...`. See
`expandHave`, which is responsible for inserting `this` in `have : A := ...`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9755fa2ce543d1c9ad31196d4687ee52043a181a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
