# Additive–multiplicative bridge obstruction

Issue: #956  
Parent: draft PR #949 at `64d1233fe2620f62e06f282d83982d105592d21c`.

The centered fiber uses additive Möbius pairs
```text
u = 2m+r
v = 2m+r+2h
center = 2m+h
coefficient = mu(u)mu(v).
```

The von-Mangoldt coefficient bridge uses multiplicative factorizations
```text
ab=n
coefficient = mu(a)log(b).
```

These are different carrier geometries. The identity `mu*log=Lambda` does not create an index bijection between them.

The source therefore rejects direct reindexing as the intended bridge and defines the actual type of theorem that would be required:
```lean
AdditiveToMultiplicativeKernel
AdditiveMultiplicativeCoefficientKernelExists
AdditiveMultiplicativeNormControlledKernelExists.
```

A coefficient kernel would transform a finite packet of centered additive Möbius pairs into multiplicative Möbius-log coefficients. An energy comparison would require the stronger norm-controlled kernel.

Neither kernel existence statement is proved.

This closes the naive direct-coordinate route and identifies the next genuine bridge obligation:
```text
NORM_CONTROLLED_ADDITIVE_MULTIPLICATIVE_KERNEL_OPEN
```
