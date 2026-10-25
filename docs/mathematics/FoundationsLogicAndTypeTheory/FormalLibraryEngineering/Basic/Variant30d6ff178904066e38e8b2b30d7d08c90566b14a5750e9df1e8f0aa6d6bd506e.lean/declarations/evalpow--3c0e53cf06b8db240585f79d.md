# evalPow₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc97b170d37c242215614cffbef2d5f7b1bb370cc364e861e309c710e77e4425",
  "kind": "def",
  "lexical_name": "evalPow₁",
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
  "slug": "evalpow--3c0e53cf06b8db240585f79d",
  "source": {
    "blob": "c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 786,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c0e53cf06b8db240585f79dd8af715a92cd2d83b355898b374117722658d870",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc97b170d37c242215614cffbef2d5f7b1bb370cc364e861e309c710e77e4425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 786–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalPow₁ (va : ExSum sα a) (vb : ExProd sℕ b) : Result (ExSum sα) q($a ^ $b) :=
  match va, vb with
  | va, .const 1 =>
    haveI : $b =Q Nat.rawCast (nat_lit 1) := ⟨⟩
    ⟨_, va, by exact q(pow_one_cast $a)⟩
  | .zero, vb => match vb.evalPos with
    | some p => ⟨_, .zero, q(zero_pow (R := $α) $p)⟩
    | none => evalPowAtom sα (.sum .zero) vb
  | ExSum.add va .zero, vb => -- TODO: using `.add` here takes a while to compile?
    let ⟨_, vc, pc⟩ := evalPowProd sα va vb
    ⟨_, vc.toSum, q(single_pow $pc)⟩
  | va, vb =>
    if vb.coeff > 1 then
      let ⟨k, _, vc, pc⟩ := extractCoeff vb
      let ⟨_, vd, pd⟩ := evalPow₁ va vc
      let ⟨_, ve, pe⟩ := evalPowNat sα vd k
      ⟨_, ve, q(pow_nat $pc $pd $pe)⟩
    else evalPowAtom sα (.sum va) vb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean#L786).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
