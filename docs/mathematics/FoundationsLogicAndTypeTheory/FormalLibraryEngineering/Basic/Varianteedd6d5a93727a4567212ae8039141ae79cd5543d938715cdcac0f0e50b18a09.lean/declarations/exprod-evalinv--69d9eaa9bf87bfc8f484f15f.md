# ExProd.evalInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47cc874157fc3efb37f5663fc5fdceafdd7cf894627de38ac8ea9ec5e5dec49a",
  "kind": "def",
  "lexical_name": "ExProd.evalInv",
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
  "slug": "exprod-evalinv--69d9eaa9bf87bfc8f484f15f",
  "source": {
    "blob": "199b4667a30b01ece8856acfe3e52a15791e68aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1021,
    "line": 996,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69d9eaa9bf87bfc8f484f15f5d91490c3864cfb32782830cde7537369f8f43a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47cc874157fc3efb37f5663fc5fdceafdd7cf894627de38ac8ea9ec5e5dec49a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1021.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExProd.evalInv {a : Q($α)} (czα : Option Q(CharZero $α)) (va : ExProd sα a) :
    AtomM (Result (ExProd sα) q($a⁻¹)) := do
  Lean.Core.checkSystem decl_name%.toString
  match va with
  | .const c hc =>
    let ra := Result.ofRawRat c a hc
    match NormNum.evalInv.core q($a⁻¹) a ra dα czα with
    | some rc =>
      let ⟨zc, hc⟩ := rc.toRatNZ.get!
      let ⟨c, pc⟩ := rc.toRawEq
      pure ⟨c, .const zc hc, pc⟩
    | none =>
      let ⟨_, vc, pc⟩ ← evalInvAtom sα dα a
      pure ⟨_, vc.toProd (ExProd.mkNat sℕ 1).2, q(toProd_pf $pc)⟩
  | .mul (x := a₁) (e := _a₂) _va₁ va₂ va₃ => do
    let ⟨_b₁, vb₁, pb₁⟩ ← evalInvAtom sα dα a₁
    let ⟨_b₃, vb₃, pb₃⟩ ← va₃.evalInv czα
    let ⟨c, vc, (pc : Q($_b₃ * ($_b₁ ^ $_a₂ * Nat.rawCast 1) = $c))⟩ ←
      evalMulProd sα vb₃ (vb₁.toProd va₂)
    pure ⟨c, vc, (q(inv_mul $pb₁ $pb₃ $pc) : Expr)⟩

/-- Inverts a polynomial `va` to get a normalized result polynomial.

* `0⁻¹ = 0`
* `a⁻¹ = (a⁻¹)` if `a` is a nontrivial sum
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199b4667a30b01ece8856acfe3e52a15791e68aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
