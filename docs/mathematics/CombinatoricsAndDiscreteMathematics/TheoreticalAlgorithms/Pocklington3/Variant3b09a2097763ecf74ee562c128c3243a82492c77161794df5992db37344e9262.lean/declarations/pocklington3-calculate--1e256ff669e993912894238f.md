# pocklington3_calculate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3337433447c8ad6e53b48e7df52e84248db0056dd53d4f77f6a51935834b659",
  "kind": "def",
  "lexical_name": "pocklington3_calculate",
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
  "slug": "pocklington3-calculate--1e256ff669e993912894238f",
  "source": {
    "blob": "db6c51b6928b80e89948a68e8ad4008f51272d82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e256ff669e993912894238fb795962beb1ee92aa8daabda09eae38c9a2edc9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3337433447c8ad6e53b48e7df52e84248db0056dd53d4f77f6a51935834b659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pocklington3_calculate (N e root m : ℕ) (F' : List PrimePow)
    (mode : Pocklington3CertMode) : Bool :=
  let F := Nat.mul (F'.rec 1 fun pp _ ih ↦ pp.rec fun p vp _ _ ↦ ih.mul <| p.pow vp) <| (2).pow e
  let two_F := F.mul 2
  let R := N.div F
  let r := R.mod two_F
  let s := R.div two_F
  F'.rec (powModTR root (N.div 2) N |>.pred.gcd N |>.beq 1)
    (fun pp _ ih ↦ pp.rec fun p _ _ _ ↦ powModTR root (N.div p) N |>.pred.gcd N |>.beq 1 && ih) &&
  (0).blt e &&
  (mode.calculate r s) &&
  (N.mod F |>.beq 1) &&
  (R.mod 2 |>.beq 1) &&
  (powModTR root N.pred N |>.beq 1) &&
  (forallB (fun l ↦ Nat.blt 0 (N.mod l)) F.succ m.pred F) &&
  (s.mul 2 |>.add (m.pow 2) |>.blt (two_F.add r |>.mul m |>.add 2))

-- MOVE
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6c51b6928b80e89948a68e8ad4008f51272d82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
